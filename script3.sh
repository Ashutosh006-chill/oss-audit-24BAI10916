#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "============================================"
echo "        Directory Audit Report              "
echo "============================================"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "[OK] $DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "[X]  $DIR does not exist on this system."
    fi
done
echo "--------------------------------------------"
PYTHON_DIR="/usr/lib/python3"
if [ -d "$PYTHON_DIR" ]; then
    PY_PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "[*] Python Lib Dir ($PYTHON_DIR) Permissions: $PY_PERMS"
fi