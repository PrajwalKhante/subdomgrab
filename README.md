# subdomgrab v1.1

A simple **Bash-based subdomain enumeration script** that combines results from multiple tools into one **sorted, duplicate-free list** for easy analysis.

---

## 🚀 Features
- Collects subdomains using **Amass**, **Assetfinder**, **Subfinder**, and **Findomain**.
- Aggregates results into a single file (`total.txt`).
- **Removes duplicates and sorts** the final output alphabetically.
- Checks for **internet connectivity** before execution.
- Cleans up intermediate files for a tidy workspace.

---

## ✅ Requirements
Make sure the following tools are installed and added to your system’s PATH:

- [Amass](https://github.com/owasp-amass/amass)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Findomain](https://github.com/findomain/findomain)
- [figlet](http://www.figlet.org/) (optional for banner display)

---

## 📦 Installation
```bash
git clone https://github.com/<your-username>/subdomgrab.git
cd subdomgrab
chmod +x subdomgrab.sh
```

---

## ▶️ Usage
```bash
./subdomgrab.sh <target>
```

**Example:**
```bash
./subdomgrab.sh example.com
```

---

## 📂 Output
- The final **sorted and unique** list of subdomains will be saved as:
```
total.txt
```

---

## 🛠 How It Works
1. Checks internet connectivity.
2. Runs subdomain enumeration using:
   - Amass
   - Assetfinder
   - Subfinder
   - Findomain
3. Combines all results.
4. **Sorts and removes duplicates**.
5. Outputs to `total.txt`.

---
