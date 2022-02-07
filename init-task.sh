#!/bin/bash
set -euxo pipefail

git_root=$(git rev-parse --show-toplevel)

build_directory_path=${git_root}/build

mkdir -p $build_directory_path

conan install -if $build_directory_path

CONAN_STORAGE=$(conan config get storage.path)

code -a  ${CONAN_STORAGE}