![PowerShell](https://img.shields.io/badge/PowerShell-5.1-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Last Commit](https://img.shields.io/github/last-commit/sonyaweaver713/FolderWatcher)
![GitHub Repo stars](https://img.shields.io/github/stars/sonyaweaver713/FolderWatcher?style=social)
![Status](https://img.shields.io/badge/status-active-brightgreen)
![Built By](https://img.shields.io/badge/built%20by-Sonya%20Weaver-purple)


# FolderWatcher
A lightweight PowerShell folder monitoring script that logs file activity in real time.
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



