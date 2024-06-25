// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `type_alias.rs` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

use crate::auxiliary::sample_types::{EnumAlias, Id, MyStruct, StructAlias, UserIdAlias};

#[flutter_rust_bridge::frb(serialize)]
pub async fn handle_type_alias_id_twin_rust_async_sse(input: Id) -> Id {
    input
}

#[flutter_rust_bridge::frb(serialize)]
pub async fn handle_type_nest_alias_id_twin_rust_async_sse(input: UserIdAlias) -> Id {
    input
}

pub struct TestModelTwinRustAsyncSse {
    pub id: Id,
    pub name: String,
    pub alias_enum: EnumAlias,
    pub alias_struct: MyStruct,
}

#[flutter_rust_bridge::frb(serialize)]
pub async fn handle_type_alias_model_twin_rust_async_sse(input: Id) -> TestModelTwinRustAsyncSse {
    TestModelTwinRustAsyncSse {
        id: input,
        name: "TestModel".to_owned(),
        alias_enum: EnumAlias::False,
        alias_struct: StructAlias { content: true },
    }
}
