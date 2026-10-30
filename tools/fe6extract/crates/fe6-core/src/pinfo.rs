//! `struct PInfo` -- the per-character table reached through `pr_PInfoTable`.
//!
//! The layout mirrors `include/unit.h` in the rebuild.  The table is indexed
//! by `pid - 1`, so 226 entries cover pids `0x01..=0xE2` (`MAX_PIDS - 1`).
//!
//! ```text
//! 0x00 msg_name   u16   0x02 msg_desc   u16   0x04 id        u8   0x05 jid  u8
//! 0x06 fid        u16   0x08 chibi      u8    0x09 affinity  u8   0x0A sort u8
//! 0x0B..0x13      i8 x9  (level, hp, pow, skl, spd, def, res, lck, con)
//! 0x14..0x1B      u8 x8  (weapon exp)
//! 0x1C..0x22      u8 x7  (growths: hp, pow, skl, spd, def, res, lck)
//! 0x23..0x24      u8 x2  (banim palette)
//! 0x25 base_mag   i8    0x26 growth_mag i8   0x27 pad
//! 0x28 attributes u32   0x2C support_info u32
//! ```

/// Size of one `struct PInfo` record, in bytes.
pub const PINFO_SIZE: usize = 0x30;

/// Number of entries in a retail FE6 table (`MAX_PIDS - 1`).
pub const PINFO_COUNT: u32 = 226;

/// Decoded `struct PInfo`.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
pub struct PInfo {
    /// Text id of the character's name.
    pub msg_name: u16,
    /// Text id of the character's description.
    pub msg_desc: u16,
    /// Character id (`PID_*`); equals table index + 1.
    pub id: u8,
    /// Class the character joins in (`JID_*`).
    pub jid_default: u8,
    /// Face id.
    pub fid: u16,
    pub chibi_id: u8,
    pub affinity: u8,
    pub sort_order_key: u8,

    pub base_level: i8,
    pub base_hp: i8,
    pub base_pow: i8,
    pub base_skl: i8,
    pub base_spd: i8,
    pub base_def: i8,
    pub base_res: i8,
    pub base_lck: i8,
    pub bonus_con: i8,

    pub wexp: [u8; 8],

    pub growth_hp: u8,
    pub growth_pow: u8,
    pub growth_skl: u8,
    pub growth_spd: u8,
    pub growth_def: u8,
    pub growth_res: u8,
    pub growth_lck: u8,

    pub banim_pal: [u8; 2],

    pub base_mag: i8,
    pub growth_mag: i8,

    pub attributes: u32,
    /// Pointer to the `struct SupportInfo` (0 when the unit has none).
    pub support_info: u32,
}

impl PInfo {
    /// Decode one little-endian record.  Returns `None` if `src` is short.
    pub fn decode(src: &[u8]) -> Option<Self> {
        let b: &[u8; PINFO_SIZE] = src.get(..PINFO_SIZE)?.try_into().ok()?;
        let u16_at = |o: usize| u16::from_le_bytes([b[o], b[o + 1]]);
        let u32_at = |o: usize| u32::from_le_bytes([b[o], b[o + 1], b[o + 2], b[o + 3]]);

        Some(Self {
            msg_name: u16_at(0x00),
            msg_desc: u16_at(0x02),
            id: b[0x04],
            jid_default: b[0x05],
            fid: u16_at(0x06),
            chibi_id: b[0x08],
            affinity: b[0x09],
            sort_order_key: b[0x0A],

            base_level: b[0x0B] as i8,
            base_hp: b[0x0C] as i8,
            base_pow: b[0x0D] as i8,
            base_skl: b[0x0E] as i8,
            base_spd: b[0x0F] as i8,
            base_def: b[0x10] as i8,
            base_res: b[0x11] as i8,
            base_lck: b[0x12] as i8,
            bonus_con: b[0x13] as i8,

            wexp: b[0x14..0x1C].try_into().ok()?,

            growth_hp: b[0x1C],
            growth_pow: b[0x1D],
            growth_skl: b[0x1E],
            growth_spd: b[0x1F],
            growth_def: b[0x20],
            growth_res: b[0x21],
            growth_lck: b[0x22],

            banim_pal: [b[0x23], b[0x24]],

            base_mag: b[0x25] as i8,
            growth_mag: b[0x26] as i8,

            attributes: u32_at(0x28),
            support_info: u32_at(0x2C),
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    /// First record of fe6re.gba: PID_ROY, decoded by hand from the ROM.
    const ROY: [u8; PINFO_SIZE] = [
        0xEC, 0x07, 0xB9, 0x04, 0x01, 0x01, 0x02, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x02, 0x02,
        0x03, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x28,
        0x32, 0x28, 0x19, 0x1E, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC,
        0xA8, 0x12, 0x08,
    ];

    #[test]
    fn decodes_roy() {
        let p = PInfo::decode(&ROY).expect("48 bytes");
        assert_eq!(p.id, 1);
        assert_eq!(p.msg_name, 0x07EC);
        assert_eq!(p.msg_desc, 0x04B9);
        assert_eq!(p.jid_default, 1);
        assert_eq!(p.fid, 2);
        assert_eq!(p.base_level, 1);
        assert_eq!(p.base_pow, 2);
        assert_eq!(p.base_lck, 7);
        assert_eq!(
            [
                p.growth_hp, p.growth_pow, p.growth_skl, p.growth_spd, p.growth_def, p.growth_res,
                p.growth_lck
            ],
            [80, 40, 50, 40, 25, 30, 60]
        );
        assert_eq!(p.support_info, 0x0812_A8BC);
    }

    #[test]
    fn rejects_short_input() {
        assert!(PInfo::decode(&ROY[..47]).is_none());
    }

    #[test]
    fn signed_base_stats() {
        let mut raw = ROY;
        raw[0x0B] = 0xFF; // level -1
        raw[0x13] = 0xFE; // con -2
        let p = PInfo::decode(&raw).unwrap();
        assert_eq!(p.base_level, -1);
        assert_eq!(p.bonus_con, -2);
    }

    #[test]
    fn size_is_48() {
        assert_eq!(PINFO_SIZE, 0x30);
    }
}
