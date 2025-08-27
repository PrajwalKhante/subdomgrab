# subdomgrab v1.1

A simple **Bash-based subdomain enumeration script** that combines results from multiple tools into one **sorted, duplicate-free list** for easy analysis.

## Features
- Collects subdomains using **Amass**, **Assetfinder**, **Subfinder**, and **Findomain**.
- Aggregates results into a single file (`total.txt`).
- **Removes duplicates and sorts** the final output alphabetically.
- Automatically checks for internet connectivity before execution.
- Cleans up intermediate files to keep the workspace tidy.

## Requirements
Make sure the following tools are installed and added to your system’s PATH:
- [Amass](https://github.com/owasp-amass/amass)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Findomain](https://github.com/findomain/findomain)
- [figlet](http://www.figlet.org/) (optional, for banner display)

## Usage
```bash
git clone https://github.com/<your-username>/subdomgrab.git
cd subdomgrab
chmod +x subdomgrab.sh
./subdomgrab.sh <target>


./subdomgrab.sh example.com
