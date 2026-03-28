#!/bin/bash
# Script 4: Log File Analyzer
LOGFILE=${1:-"sample_log.txt"}
KEYWORD=${2:-"error"}
COUNT=0

# Create a sample log file just for the audit demonstration
echo -e "INFO: System started\nERROR: Failed to load module\nWARN: Memory running low\nERROR: Python process crashed\nINFO: System shutdown" > sample_log.txt

if [ ! -r "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Result: Keyword '$KEYWORD' found $COUNT times."
if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 occurrences ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi