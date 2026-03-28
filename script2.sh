#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

if command -v $PACKAGE &> /dev/null; then
    echo "[+] $PACKAGE is installed on this system."
    VERSION=$($PACKAGE --version 2>&1)
    echo "    Version: $VERSION"
else
    echo "[-] $PACKAGE is NOT installed."
fi

echo "--------------------------------------------"
case $PACKAGE in
    python3) 
        echo "Python: A language shaped entirely by community, emphasizing readability." 
        ;;
    httpd|apache2) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    git) 
        echo "Git: The tool Linus built when proprietary failed him." 
        ;;
    *) 
        echo "Unknown package philosophy." 
        ;;
esac