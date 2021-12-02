$Movements = Import-Csv "~/Documents/Coding/Advent of Code/inputday2.csv"
$XDistance = 0
$YDistance = 0
$Aim = 0

for ($i = 0; $i -lt $Movements.Length; $i++) {
    Switch -Exact ($Movements.Movement[$i]) {
        forward {$XDistance = $XDistance + [int]$Movements.Value[$i]; $YDistance = $YDistance + ($Aim * [int]$Movements.Value[$i]); Write-Host Forward $XDistance,$YDistance,$Aim; Break}
        down {$Aim = $Aim + [int]$Movements.Value[$i]; Write-Host Down $XDistance,$YDistance,$Aim; Break}
        up {$Aim = $Aim - [int]$Movements.Value[$i]; Write-Host Up $XDistance,$YDistance,$Aim; Break}
    }
}

$Multiple = $XDistance * $YDistance

Write-Host "Forward movement is $XDistance, vertical movement is $YDistance, multiple is $Multiple"