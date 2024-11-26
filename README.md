### **README.md**

```markdown
# Linux Server Scrutiny Script

## Overview
The **Linux Server Scrutiny Script** is a shell script designed to monitor and audit a Linux server. It gathers system information, analyzes resource usage, monitors network activity, and reports potential issues to help system administrators ensure the health, performance, and security of their servers.

## Features
- Collects basic system information (hostname, OS details, kernel version).
- Reports disk usage for all mounted drives.
- Identifies the top 5 CPU-consuming processes.
- Monitors CPU and memory usage in real-time.
- Lists active network connections and open ports.
- Scans system logs for recent errors.
- Outputs all findings into a detailed log file for review.

## Prerequisites
To run this script, ensure that:
- Your server is running a Linux distribution.
- You have `bash` installed.
- The following commands are available on your system:
  - `uname`
  - `df`
  - `ps`
  - `top`
  - `free`
  - `netstat` (or `ss` for modern systems)
  - `grep`

## Usage

### 1. Clone or Download the Repository
Clone this repository to your Linux server using:
```bash
git clone https://github.com/chinmay444/linux-scrutiny-script.git
```
Alternatively, download the `script.sh` file and save it on your server.

### 2. Make the Script Executable
Navigate to the directory containing the script and run:
```bash
chmod +x script.sh
```

### 3. Execute the Script
Run the script using:
```bash
./script.sh
```

### 4. Review the Report
The script generates a detailed report saved as `server_report_<date>.log` in the same directory. Open the file to review:
```bash
cat server_report_<date>.log
```

## Example Report Output
The generated report includes sections like:
- System Information
- Disk Usage
- Top CPU-Consuming Processes
- CPU and Memory Usage
- Network Status
- System Log Errors

Example:
```plaintext
===============================
   Linux Server Scrutiny Report
   Generated on: Sun Nov 26 2024
===============================

---- SYSTEM INFORMATION ----
Hostname: my-server
Operating System: GNU/Linux
Kernel Version: 5.15.0-79-generic

---- DISK USAGE ----
Filesystem      Usage Mounted on
/dev/sda1       40%   /
...

---- TOP 5 CPU-CONSUMING PROCESSES ----
PID    COMMAND    %CPU
1234   apache2    25.4
...
```

## Contributing
Contributions are welcome! Feel free to fork this repository, make changes, and submit a pull request. Please ensure all updates are documented.

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Author
- **Chinmay Chaudhari**
- Aspiring DevOps and Cloud Engineer
- Email: chinmayssc321@gmail.com

## Acknowledgments
Special thanks to the open-source community for their contributions to Linux server tools and monitoring utilities.
```
