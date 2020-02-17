function listServices {
    Get-WmiObject win32_service
}

# listServices

function startService {
    param($service)
    Start-Service -Name $service
}

# startService -service 'nombredelservicio'

function stopService {
    param($service)
    Stop-Service -Name $service
}

# stopService -service 'nombredelservicio'

function restartService {
    param($service)
    Restart-Service -Name $service
}

restartService -service 'winmgmt'