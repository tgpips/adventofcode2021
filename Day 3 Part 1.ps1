$Binary = Import-Csv $PSScriptRoot/inputday3.csv
$Value1,$Value2,$Value3,$Value4,$Value5,$Value6,$Value7,$Value8,$Value9,$Value10,$Value11,$Value12 = 0
$Value1n,$Value2n,$Value3n,$Value4n,$Value5n,$Value6n,$Value7n,$Value8n,$Value9n,$Value10n,$Value11n,$Value12n = 0

for($i = 0; $i -lt $Binary.Length; $i++) {
    Switch ($Binary.Value1[$i]) {
        1 {$Value1 = $Value1 + 1}
        0 {$Value1n = $Value1n + 1}
    }
    Switch ($Binary.Value2[$i]) {
        1 {$Value2 = $Value2 + 1}
        0 {$Value2n = $Value2n + 1}
    }
    Switch ($Binary.Value3[$i]) {
        1 {$Value3 = $Value3 + 1}
        0 {$Value3n = $Value3n + 1}
    }
    Switch ($Binary.Value4[$i]) {
        1 {$Value4 = $Value4 + 1}
        0 {$Value4n = $Value4n + 1}
    }
    Switch ($Binary.Value5[$i]) {
        1 {$Value5 = $Value5 + 1}
        0 {$Value5n = $Value5n + 1}
    }
    Switch ($Binary.Value6[$i]) {
        1 {$Value6 = $Value6 + 1}
        0 {$Value6n = $Value6n + 1}
    }
    Switch ($Binary.Value7[$i]) {
        1 {$Value7 = $Value7 + 1}
        0 {$Value7n = $Value7n + 1}
    }
    Switch ($Binary.Value8[$i]) {
        1 {$Value8 = $Value8 + 1}
        0 {$Value8n = $Value8n + 1}
    }
    Switch ($Binary.Value9[$i]) {
        1 {$Value9 = $Value9 + 1}
        0 {$Value9n = $Value9n + 1}
    }
    Switch ($Binary.Value10[$i]) {
        1 {$Value10 = $Value10 + 1}
        0 {$Value10n = $Value10n + 1}
    }
    Switch ($Binary.Value11[$i]) {
        1 {$Value11 = $Value11 + 1}
        0 {$Value11n = $Value11n + 1}
    }
    Switch ($Binary.Value12[$i]) {
        1 {$Value12 = $Value12 + 1}
        0 {$Value12n = $Value12n + 1}
    }
}

if($Value1 -gt $Value1n) {
    $Bit1 = 1
}
else {
    $Bit1 = 0
}
if($Value2 -gt $Value2n) {
    $Bit2 = 1
}
else {
    $Bit2 = 0
}
if($Value3 -gt $Value3n) {
    $Bit3 = 1
}
else {
    $Bit3 = 0
}
if($Value4 -gt $Value4n) {
    $Bit4 = 1
}
else {
    $Bit4 = 0
}
if($Value5 -gt $Value5n) {
    $Bit5 = 1
}
else {
    $Bit5 = 0
}
if($Value6 -gt $Value6n) {
    $Bit6 = 1
}
else {
    $Bit6 = 0
}
if($Value7 -gt $Value7n) {
    $Bit7 = 1
}
else {
    $Bit7 = 0
}
if($Value8 -gt $Value8n) {
    $Bit8 = 1
}
else {
    $Bit8 = 0
}
if($Value9 -gt $Value9n) {
    $Bit9 = 1
}
else {
    $Bit9 = 0
}
if($Value10 -gt $Value10n) {
    $Bit10 = 1
}
else {
    $Bit10 = 0
}
if($Value11 -gt $Value11n) {
    $Bit11 = 1
}
else {
    $Bit11 = 0
}
if($Value12 -gt $Value12n) {
    $Bit12 = 1
}
else {
    $Bit12 = 0
}

Write-Host $Bit1,$Bit2,$Bit3,$Bit4,$Bit5,$Bit6,$Bit7,$Bit8,$Bit9,$Bit10,$Bit11,$Bit12