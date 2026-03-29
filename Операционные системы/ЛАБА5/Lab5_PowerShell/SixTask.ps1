$disks = Get-CimInstance Win32_LogicalDisk
$disks | Select DeviceID 