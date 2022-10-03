#!/bin/bash

git submodule init ; git submodule update

cd external/llvm-project ; git checkout release/16.x ; mkdir build ; cd build

cmake -G "Unix Makefiles" ../llvm -DLLVM_ENABLE_PROJECTS="clang" -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi"

cmake --build . ; cmake --build . --target install