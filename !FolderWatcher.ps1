# FolderWatcher.ps1
# Monitors a folder and logs changes silently

$folderPath = "C:\Users\SonyaWeaver\OneDrive - Revolution Group\Desktop\!Folder_Watcher_Test_Folder"
$logFile = "$env:USERPROFILE\Documents\FolderWatcher.log"

# Ensure log directory exists
if (!(Test-Path -Path (Split-Path $logFile))) {
    New-Item -ItemType Directory -Path (Split-Path $logFile)
}

# Create the file watcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $folderPath
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true
$watcher.Filter = "*.*"

# Log event handler
$action = {
    $time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $event = $Event.SourceEventArgs
    $type = $event.ChangeType
    $path = $event.FullPath
    $logEntry = "$time - $type - $path"
    Add-Content -Path $logFile -Value $logEntry
}

# Hook up events
Register-ObjectEvent $watcher Created -Action $action | Out-Null
Register-ObjectEvent $watcher Changed -Action $action | Out-Null
Register-ObjectEvent $watcher Deleted -Action $action | Out-Null
Register-ObjectEvent $watcher Renamed -Action $action | Out-Null

# Loop to keep script running silently
while ($true) { Start-Sleep -Seconds 10 }
