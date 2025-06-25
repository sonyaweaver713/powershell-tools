# powershell-tools
A collection of PowerShell scripts for cloud automation, networking, and diagnostics
---

## 📁 FolderWatcher.ps1

A PowerShell script that **monitors a folder in real time** and logs all file activity (created, deleted, renamed, or changed). It’s designed to run silently in the background as a lightweight file activity monitor — great for automation, auditing, or file drop detection.

### 🧠 Features

- ✅ Monitors any folder (and subfolders)
- ✅ Detects: create, delete, rename, and change
- ✅ Logs activity to a `.log` file
- ✅ Can run silently in the background via Task Scheduler
- ✅ Easy to configure — just change the folder path!

### 🚀 How to Use This Tool

#### 1️⃣ Save the Script

Save as:FolderWatcher.ps1

#### 2️⃣ Set the Folder Path

```powershell
$folderPath = "C:\Users\SonyaWeaver\OneDrive - Revolution Group\Desktop\!Folder_Watcher_Test_Folder"

3️⃣ Run the Script
.\FolderWatcher.ps1

4️⃣ View the Log
C:\Users\SonyaWeaver\Documents\FolderWatcher.log

🕵️ Run in Background with Task Scheduler
Create a new task in Task Scheduler

Set to run on logon

Use these settings:

Program: powershell

Arguments:
-WindowStyle Hidden -ExecutionPolicy Bypass -File "C:\Path\To\FolderWatcher.ps1"



