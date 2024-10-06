#!/bin/bash

files=(
"array.md"
"bit.md"
"complexity.md"
"dynamicprogramming.md"
"encoding.md"
"general.md"
"graph.md"
"greedy.md"
"hashtable.md"
"heap.md"
"linkedlist.md"
"math.md"
"queue.md"
"recursion.md"
"sort.md"
"stack.md"
"string.md"
"technique.md"
"tree.md"
)

mkdir -p output

for f in "${files[@]}"; do
  name="${f%.*}"
  npx mdanki "${name}".md "${name}".apkg --config settings/settings.json
  mv "${name}".apkg output/
done