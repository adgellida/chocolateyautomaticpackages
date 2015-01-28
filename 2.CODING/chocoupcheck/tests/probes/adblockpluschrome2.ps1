# initialize the items variable with the
# contents of a directory
$path = "C:\Users\Tonin\AppData\Local\Google\Chrome\User Data\Default\Extensions\cfhdojbkjhnklbpkdaibdccddilifddb"
$items = Get-ChildItem -Path $path
 
# enumerate the items array

#foreach ($item in $items)
#{
      # if the item is a directory, then process it.
#      if ($item.Attributes -eq "Directory")
#      {            
#            Write-Host $item.Name
#      }
#}

#Compare-Object -ReferenceObject $fso -DifferenceObject $fsoBU

$string = Get-ChildItem $path | Sort CreationTime | Select-Object -first 1 | Select -expand Name

$string = $string.Substring(0,$string.Length-2)

$string