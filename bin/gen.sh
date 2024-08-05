#!/bin/bash

#rm -rf /Volumes/mac-J/larpoux/.cargo/registry
#cd rust
#cargo clean
#cd ..

cargo install 'flutter_rust_bridge_codegen@^2.0.0-dev.0'
#cp flutter_rust_bridge/frb_example/integrate_third_party/rust/src/api/override_web_audio_api.rs tau_rust/rust/src/api
#cp -a flutter_rust_bridge/frb_example/integrate_third_party/rust/src/third_party/* tau_rust/rust/src/third_party

cd tau_rust
rm -r lib/public/rust/api/*
rm -r lib/public/rust/frb_*
rm rust/src/frb_*

flutter clean
flutter pub get

cd example
flutter pub get
cd ..

#flutter_rust_bridge_codegen generate
cargo run --manifest-path ../flutter_rust_bridge/frb_codegen/Cargo.toml -- generate
###~/bin/generate.sh


if [ $? -ne 0 ]; then
    echo "Error: ~/bin/generate.sh"
    exit -1
fi


cd rust

rm Cargo.lock
cargo clippy --fix --allow-dirty --allow-staged -- -D warnings
if [ $? -ne 0 ]; then
    echo "Error: ~/bin/generate.sh"
    exit -1
fi

cargo +nightly fmt --check
if [ $? -ne 0 ]; then
    echo "Error: ~/bin/generate.sh"
    exit -1
fi


cargo clean
if [ $? -ne 0 ]; then
    echo "Error: cargo clean"
    exit -1
fi

cargo build
if [ $? -ne 0 ]; then
    echo "Error: cargo build"
    exit -1
fi

cargo build --release
if [ $? -ne 0 ]; then
    echo "Error: cargo build"
    exit -1
fi

cd .. # back into tau/tau_rust
cd .. # back into tau/
