# To declare a parameter in PowerShell:

param (
    [Parameter(Mandatory=$True)]
    [string[]] # Tipo de parámetro. Los corchetes indican que puede ser más de uno
    $Computername # Nombre del parámetro
)

# Script en cuestión:

get-service -ComputerName $Computername |
Where-Object -Property Status -eq 'Stopped'

# No funca porque no estoy haciendo lo de remote
# PARA DEBUGGING Write-Debug y Set-PSBreakpoint

