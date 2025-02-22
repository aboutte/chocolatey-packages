﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$silentArgs = '/S'

$pp = Get-PackageParameters
if ($pp['DIR']){
  $silentArgs += " /D=`"$($pp['DIR'])`""
}

$packageArgs = @{
  packageName = $env:ChocolateyPackageName  
  file        = "$toolsDir\flrig-1.4.5_setup.exe"
  silentArgs  = $silentArgs
}

Install-ChocolateyInstallPackage @packageArgs
