try {
	$packageName = '{{PackageName}}'
    $url = '{{DownloadUrl}}'
    #$url = 'http://heanet.dl.sourceforge.net/project/aria2/stable/aria2-{version}/{anchor1}.zip' # For testing purposes
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}