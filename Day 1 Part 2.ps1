$Data = Import-Csv ~/Downloads/input.csv
$Increased = 0
$Previous = 477

for ($i = 1; $i -lt $Data.Length; $i++) {
    $CurrentRow = [int]$Data.Value[$i] + [int]$Data.Value[$i+1] + [int]$Data.Value[$i+2]

    if($CurrentRow -gt $Previous) {
        $Increased = $Increased + 1
    }
    $Previous = $CurrentRow
}

Write-Host $Increased