$venvPath = ".venv"

if (Test-Path -Path $venvPath) {
    & $venvPath\Scripts\activate.ps1
    Write-Output "$($venvPath)  activated"
} 
else {
    Write-Output "$($venvPath) does not exist"
}