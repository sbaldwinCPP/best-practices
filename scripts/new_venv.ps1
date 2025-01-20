$venvPath = ".venv"

if (Test-Path -Path $venvPath) {
    Write-Output "$($venvPath) already exists"
} 
else {
    # create new virtual environment
    & py -m venv $venvPath
    # activate the new venv
    & $venvPath\Scripts\activate.ps1
    # upgrade pip
    & $venvPath/scripts/python.exe -m pip install --upgrade pip
    # install requirements
    & py -m pip install -r .\requirements.txt
    Write-Output "$venvPath created and activated"
}