Start-Process -FilePath "C:\Users\dm285bk\Downloads\powershell-excercises\excercises\ex02\content_generator\ContentGenerator.exe"

# acceder a applog.log, cuando la cantidad de connection failed msgs sea igual a cinco detener proceso e imprimir
# numero total de failed y numero total de successful

$failMessages = Get-Content -Path "C:\Users\dm285bk\Downloads\powershell-excercises\excercises\ex02\applog.log" | Where-Object {$_ -like '*failed*'}
$successMessages = Get-Content -Path "C:\Users\dm285bk\Downloads\powershell-excercises\excercises\ex02\applog.log" | Where-Object {$_ -like '*successful*'}

if ($failMessages.Length -ge 5) {
    Stop-Process -Name "ContentGenerator" -Force
    Write-Host 'Process stopped'
    Write-Host "There were $($failMessages.Length) failed connections and $($successMessages.Length) successful connections"
}

# crashea la primera vez porque symantec no deja ejecutarlo sin antes confirmar :)