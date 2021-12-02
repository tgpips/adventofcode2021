$Movements = Import-Csv "~/Documents/Coding/Advent of Code/inputday2.csv"
$XDistance = 0
$YDistance = 0

for ($i = 0; $i -lt $Movements.Length; $i++) {
    Switch ($Movements.Movement[$i]) {
        forward {$XDistance = $XDistance + [int]$Movements.Value[$i]}
        down {$YDistance = $YDistance + [int]$Movements.Value[$i]}
        up {$YDistance = $YDistance - [int]$Movements.Value[$i]}
    }
}

$Multiple = $XDistance * $YDistance

Write-Host "Forward movement is $XDistance, vertical movement is $YDistance, multiple is $Multiple"