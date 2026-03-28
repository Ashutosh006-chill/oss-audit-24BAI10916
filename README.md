# Open Source Software Audit - Capstone Project
**Student Name:** Ashutosh Dora  
**Registration Number:** 24BAI10916  
**Course:** Open Source Software (NGMC)  
**Software Audited:** Python (PSF License)

## Project Overview
[cite_start]This repository contains the practical component of the OSS Audit Capstone Project[cite: 4, 89]. It includes five shell scripts designed to demonstrate Linux system administration, package management, and automation skills within an open-source context.

## Scripts Included
1. [cite_start]**script1.sh (System Identity):** Displays Linux distribution name, kernel version, and system uptime [cite: 93-97].
2. [cite_start]**script2.sh (Package Inspector):** Verifies if the audited software is installed and provides a philosophical summary [cite: 125-126].
3. [cite_start]**script3.sh (Disk Auditor):** Audits important system directories to report permissions and disk usage [cite: 145-147].
4. [cite_start]**script4.sh (Log Analyzer):** Reads a log file line-by-line to count and summarize specific keywords like "ERROR" [cite: 163-164].
5. [cite_start]**script5.sh (Manifesto Generator):** An interactive script that generates a personalized open-source philosophy statement [cite: 185-186].

## Instructions to Run
1. [cite_start]Ensure you are using a Linux environment (e.g., Ubuntu via GitHub Codespaces)[cite: 92].
2. Clone this repository: 
   `git clone https://github.com/Ashutosh006-chill/oss-audit-24BAI10916`
3. Navigate to the directory: 
   `cd oss-audit-24BAI10916`
4. Grant execution permissions to the scripts: 
   `chmod +x *.sh`
5. Execute the scripts individually:
   * `./script1.sh`
   * `./script2.sh`
   * `./script3.sh`
   * `./script4.sh`
   * `./script5.sh`

## Dependencies
* [cite_start]**Bash Shell:** Required for script execution[cite: 101, 130].
* [cite_start]**CoreUtils:** (grep, awk, cut, du, uptime) typically pre-installed on most Linux distributions[cite: 128, 148].
