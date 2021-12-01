$PreviousValue = 150
$Increased = 0

Import-Csv ~/Downloads/input.csv | ForEach-Object {
    if($_.Value -gt $PreviousValue){
        $Increased = $Increased + 1
    }
    $PreviousValue = $_.Value
}

Write-Host $Increased