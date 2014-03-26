param(
    [Parameter(Position=0,Mandatory=0)]
    [string[]]$taskList = @(),
    [Parameter(Position=1, Mandatory=0)]
    [System.Collections.Hashtable]$properties = @{}
  )

#Write-Host $MyInvocation.MyCommand.Definition
#Write-Host $MyInvocation.MyCommand.Path
#Write-Host $MyInvocation.MyCommand.Name

#$root = Split-Path -parent $MyInvocation.MyCommand.Definition
$root = (Split-Path $script:MyInvocation.MyCommand.Path)

$psversion = $host.Runspace.Version.Major

Write-Host "ps version: $psversion"

Write-Host "root: $root"

Import-Module $root\tools\psake\psake.psm1 -ErrorAction SilentlyContinue



#Invoke-psake $root\default.ps1 -properties $properties -taskList $taskList

#Remove-Module psake -ErrorAction SilentlyContinue