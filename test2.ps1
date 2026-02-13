# test_with_errors.ps1
$testFile = "$env:TEMP\test_output.txt"

try {
    "Скрипт запущен в $(Get-Date)" | Out-File $testFile
    "Пользователь: $env:USERNAME" | Out-File $testFile -Append
    "Компьютер: $env:COMPUTERNAME" | Out-File $testFile -Append
    "Процесс: $PID" | Out-File $testFile -Append
    "Админ? $([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)" | Out-File $testFile -Append
    "Ура, дошел до конца!" | Out-File $testFile -Append
}
catch {
    "ОШИБКА: $_" | Out-File $testFile
    $_.Exception.ToString() | Out-File $testFile -Append
}
