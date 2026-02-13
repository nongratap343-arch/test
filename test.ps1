# test.ps1
$testFile = "$env:TEMP\test_output.txt"
"Скрипт запущен в $(Get-Date)" | Out-File $testFile
"Пользователь: $env:USERNAME" | Out-File $testFile -Append
"Компьютер: $env:COMPUTERNAME" | Out-File $testFile -Append
"Процесс: $PID" | Out-File $testFile -Append
"Админ? $([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)" | Out-File $testFile -Append
