# test_desktop.ps1
$desktop = [Environment]::GetFolderPath("Desktop")
$testFile = "$desktop\test_output.txt"

try {
    "Скрипт запущен в $(Get-Date)" | Out-File $testFile
    "Пользователь: $env:USERNAME" | Out-File $testFile -Append
    "Компьютер: $env:COMPUTERNAME" | Out-File $testFile -Append
    "Процесс: $PID" | Out-File $testFile -Append
    "Админ? $([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)" | Out-File $testFile -Append
    
    # Проверяем, может ли скрипт видеть рабочий стол
    "Рабочий стол существует: $(Test-Path $desktop)" | Out-File $testFile -Append
    
    # Пробуем создать папку в TEMP для проверки
    $tempTest = "$env:TEMP\test_folder"
    New-Item -Path $tempTest -ItemType Directory -Force | Out-Null
    "Папка в TEMP создана: $(Test-Path $tempTest)" | Out-File $testFile -Append
    
    "Ура, дошел до конца!" | Out-File $testFile -Append
}
catch {
    "ОШИБКА: $_" | Out-File $testFile
    $_.Exception.ToString() | Out-File $testFile -Append
}
