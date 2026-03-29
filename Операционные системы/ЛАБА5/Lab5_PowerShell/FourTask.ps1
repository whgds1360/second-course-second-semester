$os = Get-CimInstance Win32_OperatingSystem
"Загрузка: $($os.LastBootUpTime)"
"Работает: $((Get-Date) - $os.LastBootUpTime)"