New-Item -Path .\Report -ItemType Directory

$date = Get-Date
New-Item -path "Report\$date.txt"

Get-Process | Select-Object Name, Id
(Get-Process).Count
