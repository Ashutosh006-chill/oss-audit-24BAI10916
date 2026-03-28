#!/bin/bash
# Script 5: Open Source Manifesto Generator
echo "============================================"
echo "    The Open Source Manifesto Generator     "
echo "============================================"
echo "Answer three quick questions:"
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
> "$OUTPUT"

echo "MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "--------------------------------" >> "$OUTPUT"
echo "I believe that software should empower users, not restrict them. Every day, I rely on tools like $TOOL to learn, build, and grow. To me, open source represents true $FREEDOM." >> "$OUTPUT"
echo "In the spirit of a community that shares knowledge without barriers, my goal is to eventually build a $BUILD and release it for anyone to use, modify, and improve. The future is open." >> "$OUTPUT"

echo ""
echo "[+] Manifesto successfully saved to $OUTPUT"
echo "--------------------------------"
cat "$OUTPUT"