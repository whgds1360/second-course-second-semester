# Очистить экран
cls

# Вывести на экран поочередно информацию, хранящуюся во всех текстовых файлах (*.txt) в текущем каталоге
Get-ChildItem -Path .\ -Filter *.txt | ForEach-Object {Get-Content $_.txt}

# Вывести на экран информацию о содержимом каталога
Write-Output "Содержимое каталога"
Get-ChildItem -Path .