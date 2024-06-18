#!/bin/bash

#rm -rf /Volumes/mac-J/larpoux/.cargo/registry
#cd rust
#cargo clean
#cd ..

#cargo install 'flutter_rust_bridge_codegen@^2.0.0-dev.0'

rm -r lib/src/rust/api/*
rm -r lib/src/rust/frb_*
rm rust/src/frb_*

flutter_rust_bridge_codegen generate
#~/bin/generate.sh
if [ $? -ne 0 ]; then
    echo "Error: ~/bin/generate.sh"
    exit -1
fi


cd rust

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

cd ..
