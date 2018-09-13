$ContainerName = 'BC'
$ImageName = 'bcinsider.azurecr.io/bcsandbox'
$LicenseFile = 'c:\license\fin.flf'
$VsixPath = "C:\ProgramData\NVR\Extensions\$containerName\vsix"

if (-not (Test-Path -PathType Container $vsixpath)) {
    #New-Item -ItemType Directory -Force -Path $vsixpath |Out-Null
    mkdir $vsixpath | out-null
}
#create object from app.json to get name
$AppJSON = Get-Content -Raw -Path (Join-Path $PSSCriptRoot '..\\MainApp\\app.json') | ConvertFrom-Json
$TestAppJSON = Get-Content -Raw -Path (Join-Path $PSSCriptRoot '..\\TestApp\\app.json') | ConvertFrom-Json
#get name of last compiled Ext.app package
$AppFile = (Get-ChildItem -Path (Join-Path $PSSCriptRoot '..\\MainApp') -Filter '*.app' | 
                    Sort-Object LastWriteTime -Descending |
                        Select-Object -First 1).Fullname
$TestAppFile = (Get-ChildItem -Path (Join-Path $PSSCriptRoot '..\\TestApp') -Filter '*.app' | 
Sort-Object LastWriteTime -Descending |
    Select-Object -First 1).Fullname
$RepoPath = (Join-Path $PSSCriptRoot '..')
$AppPath = (Join-Path $PSSCriptRoot '..\MainApp')
$TestAppPath = (Join-Path $PSSCriptRoot '..\TestApp')