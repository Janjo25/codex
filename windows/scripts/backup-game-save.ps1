# Set paths for the current save and backup destination
$saveFolder = "C:\Path\To\Game\Save"
$backupBase = "C:\Path\To\Game\Backups"

# Ask for a backup name and build the full backup path
$backupName = Read-Host "Enter backup name"
$backupPath = Join-Path $backupBase $backupName

Write-Host "Backing up..." -ForegroundColor Cyan

# Create the backup folder and copy save data into it
New-Item -Path $backupPath -ItemType Directory -Force | Out-Null
Copy-Item -Path "$saveFolder\*" -Destination $backupPath -Recurse

Write-Host "Saved to '$backupName'." -ForegroundColor Green
Write-Host "Done." -ForegroundColor Cyan
