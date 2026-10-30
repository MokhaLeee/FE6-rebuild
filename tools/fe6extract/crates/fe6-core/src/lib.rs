//! `fe6-core` -- a dependency-free reader for Fire Emblem 6 (GBA) ROMs.
//!
//! This crate is the "core" layer: pure data handling, no UI, no terminal
//! output, no platform APIs.  The CLI (`fe6-cli`) is one shell around it;
//! a Windows GUI (Tauri, Qt, ...) would be the other shell around the very
//! same types and functions.
//!
//! Layout knowledge lives in [`pinfo`]; address resolution lives in
//! [`rom`] and [`sym`].

pub mod pinfo;
pub mod rom;
pub mod sym;

pub use pinfo::{PInfo, PINFO_COUNT, PINFO_SIZE};
pub use rom::{Rom, ROM_BASE, ROM_LIMIT};
pub use sym::SymbolTable;
