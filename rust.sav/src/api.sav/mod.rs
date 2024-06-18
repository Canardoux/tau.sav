//
// Do not put code in `mod.rs`, but put in e.g. `simple.rs`.
//


use std::error::Error;
use std::sync::atomic::{AtomicU32, AtomicU64, Ordering};

pub mod simple;
pub mod toto;
pub mod audio_context;
pub mod media_element;
pub use media_element::*;
pub mod audio_buffer;

pub use media_element::*;
pub mod node;

/// Render quantum size, the audio graph is rendered in blocks of RENDER_QUANTUM_SIZE samples
/// see. <https://webaudio.github.io/web-audio-api/#render-quantum>
pub(crate) const RENDER_QUANTUM_SIZE: usize = 128;

/// Maximum number of channels for audio processing
pub const MAX_CHANNELS: usize = 32;

