use crate::codegen::generator::misc::target::TargetOrCommonMap;
use serde::{Deserialize, Serialize};
use std::path::PathBuf;

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
pub(crate) struct GeneratorWireCInternalConfig {
    pub(crate) enable: bool,
    pub(crate) rust_crate_dir: PathBuf,
    pub(crate) rust_output_path: TargetOrCommonMap<PathBuf>,
    pub(crate) c_output_path: Option<PathBuf>,
    pub(crate) c_symbol_prefix: String,
}
