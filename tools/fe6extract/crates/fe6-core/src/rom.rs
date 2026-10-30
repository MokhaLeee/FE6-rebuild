//! Byte-level access to a GBA cartridge image.
//!
//! A `.gba` file is the cartridge contents starting at bus address
//! `0x0800_0000`, so `file_offset = addr - 0x0800_0000`.  Every range is
//! checked before it is read, so a corrupt or truncated image produces
//! `None` instead of a panic or garbage.

use std::fs;
use std::io;
use std::path::{Path, PathBuf};

/// First address of the cartridge ROM area.
pub const ROM_BASE: u32 = 0x0800_0000;
/// One past the last address of the cartridge ROM area (16 MiB window).
pub const ROM_LIMIT: u32 = 0x0A00_0000;

/// An in-memory copy of a ROM image.
#[derive(Debug, Clone)]
pub struct Rom {
    data: Vec<u8>,
    path: PathBuf,
}

impl Rom {
    /// Read the whole image into memory.
    pub fn load(path: impl AsRef<Path>) -> io::Result<Self> {
        let path = path.as_ref().to_path_buf();
        let data = fs::read(&path)?;
        Ok(Self { data, path })
    }

    pub fn path(&self) -> &Path {
        &self.path
    }

    pub fn size(&self) -> usize {
        self.data.len()
    }

    pub fn data(&self) -> &[u8] {
        &self.data
    }

    /// Map a bus address to a file offset, verifying that `len` bytes exist.
    pub fn offset(&self, addr: u32, len: usize) -> Option<usize> {
        if !(ROM_BASE..ROM_LIMIT).contains(&addr) {
            return None;
        }
        let off = (addr - ROM_BASE) as usize;
        (off.checked_add(len)? <= self.data.len()).then_some(off)
    }

    /// Borrow `len` bytes starting at `addr`.
    pub fn bytes(&self, addr: u32, len: usize) -> Option<&[u8]> {
        let off = self.offset(addr, len)?;
        Some(&self.data[off..off + len])
    }

    pub fn read_u8(&self, addr: u32) -> Option<u8> {
        self.bytes(addr, 1).map(|b| b[0])
    }

    pub fn read_u16(&self, addr: u32) -> Option<u16> {
        self.bytes(addr, 2)
            .map(|b| u16::from_le_bytes([b[0], b[1]]))
    }

    pub fn read_u32(&self, addr: u32) -> Option<u32> {
        self.bytes(addr, 4)
            .map(|b| u32::from_le_bytes([b[0], b[1], b[2], b[3]]))
    }

    fn header_string(&self, off: usize, len: usize) -> String {
        let raw = self
            .data
            .get(off..off + len)
            .unwrap_or(&[]);
        let end = raw.iter().position(|&c| c == 0).unwrap_or(raw.len());
        String::from_utf8_lossy(&raw[..end]).trim_end().to_string()
    }

    /// 12-byte internal title.
    pub fn title(&self) -> String {
        self.header_string(0xA0, 12)
    }

    /// 4-byte game code.
    pub fn game_code(&self) -> String {
        self.header_string(0xAC, 4)
    }

    /// 2-byte maker code.
    pub fn maker(&self) -> String {
        self.header_string(0xB0, 2)
    }

    /// Every 4-byte-aligned address whose little-endian word equals `value`.
    ///
    /// Used to find a pointer cell (e.g. `pr_PInfoTable`) when the symbol
    /// file does not carry that name.
    pub fn find_words(&self, value: u32) -> Vec<u32> {
        self.data
            .chunks_exact(4)
            .enumerate()
            .filter(|(_, c)| u32::from_le_bytes([c[0], c[1], c[2], c[3]]) == value)
            .map(|(i, _)| ROM_BASE + (i as u32) * 4)
            .collect()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn fake_rom(bytes: &[u8]) -> Rom {
        Rom {
            data: bytes.to_vec(),
            path: PathBuf::from("test.gba"),
        }
    }

    #[test]
    fn address_mapping_checks_bounds() {
        let rom = fake_rom(&[0u8; 16]);
        assert_eq!(rom.offset(ROM_BASE, 16), Some(0));
        assert_eq!(rom.offset(ROM_BASE, 17), None);
        assert_eq!(rom.offset(ROM_BASE + 15, 2), None);
        assert_eq!(rom.offset(0x0200_0000, 1), None);
    }

    #[test]
    fn little_endian_reads() {
        let rom = fake_rom(&[0x34, 0x12, 0x78, 0x56]);
        assert_eq!(rom.read_u16(ROM_BASE), Some(0x1234));
        assert_eq!(rom.read_u32(ROM_BASE), Some(0x5678_1234));
    }
}
