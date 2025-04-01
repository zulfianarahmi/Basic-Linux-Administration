## Basic Linux Commands

### 1️⃣ `ls` - List Directory Contents

Used to list the files and directories in the current directory.

#### Examples:

- List all files in the current directory:
  ```bash
  ls
  ```
- List all files including hidden files:
  ```bash
  ls -a
  ```
- List files with detailed information (permissions, size, owner):
  ```bash
  ls -l
  ```

### 2️⃣ `cd` - Change Directory

Used to navigate between directories.

#### Examples:

- Go to the home directory:
  ```bash
  cd ~
  ```
- Go to the parent directory:
  ```bash
  cd ..
  ```
- Go to a specific directory (replace `/path/to/directory` with actual path):
  ```bash
  cd /path/to/directory
  ```

### 3️⃣ `ps` - Display Process Status

Shows a list of currently running processes.

#### Example:

- Show current processes running under your user:
  ```bash
  ps
  ```
- Show all processes running on the system:
  ```bash
  ps aux
  ```

### 4️⃣ `top` - Display System Information and Processes

Displays dynamic real-time system information, including running processes, memory usage, CPU usage, etc.

#### Example:

- To start the interactive top command:
  ```bash
  top
  ```

### 5️⃣ `df` - Disk Free Space

Shows the amount of free and used disk space on all mounted filesystems.

#### Example:

- Display disk usage for all mounted filesystems:
  ```bash
  df
  ```
- Display disk usage in human-readable format (KB, MB, GB):
  ```bash
  df -h
  ```

### 6️⃣ `du` - Disk Usage

Shows the disk usage of files and directories.

#### Example:

- Display the disk usage of the current directory:
  ```bash
  du
  ```
- Display disk usage in human-readable format:
  ```bash
  du -h
  ```
