$file = "test.txt"

if (Test-Path $file) {
    Write-Output "Файл $file существует. Его содержимое:"
    Get-Content $file
} 
else {
    Get-Date | Out-File -FilePath $file
    Write-Output "Файл $file не существовал. Он создан с текущей датой и временем."
}