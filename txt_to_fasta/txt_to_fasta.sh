#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 INPUT_DIR OUTPUT_DIR" >&2
  exit 1
fi

input_dir="$1"
output_dir="$2"

mkdir -p "$output_dir"
shopt -s nullglob

txt_files=("$input_dir"/*.txt)

if [ ${#txt_files[@]} -eq 0 ]; then
  echo "No .txt files found in $input_dir" >&2
  exit 1
fi

for txt_file in "${txt_files[@]}"; do
  base_name=$(basename "$txt_file" .txt)
  sequence=$(tr -d '[:space:]' < "$txt_file")
  printf ">%s\n%s\n" "$base_name" "$sequence" > "$output_dir/$base_name.fasta"
done