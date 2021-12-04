$Binaries = Import-Csv ./inputday3.csv
$BitIsOn = 0
$BitIsOff = 0

for ($i = 0; $i -lt $Binaries.Length; $i++) {
    Switch ($Binaries.Value1[$i]) {
         1 {$BitIsOn = $BitIsOn + 1}
         0 {$BitIsOff = $BitIsOff + 1}
        }        
    }
    
if($BitIsOn -lt $BitIsOff) {
        $FilterOnBit = 1
    }
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
        $FilterOnBit = 0
    }

$Binaries | Where Value1 -Contains $FilterOnBit | Export-Csv ./Filter1.csv

$FirstPass = Import-Csv ./Filter1.csv
$BitIsOn = 0
$BitIsOff = 0


for ($i = 0; $i -lt $FirstPass.Length; $i++) {
    Switch ($FirstPass.Value2[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
else {
    $FilterOnBit = 0
}

$FirstPass | Where Value2 -Contains $FilterOnBit | Export-Csv ./Filter2.csv

$SecondPass = Import-Csv ./Filter2.csv
$BitIsOn = 0
$BitIsOff = 0

if ($SecondPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}

for ($i = 0; $i -lt $SecondPass.Length; $i++) {
    Switch ($SecondPass.Value3[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$SecondPass | Where Value3 -Contains $FilterOnBit | Export-Csv ./Filter3.csv

$ThirdPass = Import-Csv ./Filter3.csv
$BitIsOn = 0
$BitIsOff = 0

if ($ThirdPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}

for ($i = 0; $i -lt $ThirdPass.Length; $i++) {
    Switch ($ThirdPass.Value4[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
else {
    $FilterOnBit = 0
}

$ThirdPass | Where Value4 -Contains $FilterOnBit | Export-Csv ./Filter4.csv

$FourthPass = Import-Csv ./Filter4.csv
$BitIsOn = 0
$BitIsOff = 0

if ($FourthPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}


for ($i = 0; $i -lt $FourthPass.Length; $i++) {
    Switch ($FourthPass.Value5[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$FourthPass | Where Value5 -Contains $FilterOnBit | Export-Csv ./Filter5.csv

$FifthPass = Import-Csv ./Filter5.csv
$BitIsOn = 0
$BitIsOff = 0

if ($FifthPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}

for ($i = 0; $i -lt $FifthPass.Length; $i++) {
    Switch ($FifthPass.Value6[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$FifthPass | Where Value6 -Contains $FilterOnBit | Export-Csv ./Filter6.csv

$SixthPass = Import-Csv ./Filter6.csv
$BitIsOn = 0
$BitIsOff = 0

if ($SixthPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}


for ($i = 0; $i -lt $SixthPass.Length; $i++) {
    Switch ($SixthPass.Value7[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$SixthPass | Where Value7 -Contains $FilterOnBit | Export-Csv ./Filter7.csv

$SeventhPass = Import-Csv ./Filter7.csv
$BitIsOn = 0
$BitIsOff = 0

if ($SeventhPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}


for ($i = 0; $i -lt $SeventhPass.Length; $i++) {
    Switch ($SeventhPass.Value8[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$SeventhPass | Where Value8 -Contains $FilterOnBit | Export-Csv ./Filter8.csv

$EighthPass = Import-Csv ./Filter8.csv
$BitIsOn = 0
$BitIsOff = 0

if ($EighthPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}

for ($i = 0; $i -lt $EighthPass.Length; $i++) {
    Switch ($EighthPass.Value9[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$EighthPass | Where Value9 -Contains $FilterOnBit | Export-Csv ./Filter9.csv

$NinthPass = Import-Csv ./Filter9.csv
$BitIsOn = 0
$BitIsOff = 0

if ($NinthPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}


for ($i = 0; $i -lt $NinthPass.Length; $i++) {
    Switch ($NinthPass.Value10[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$NinthPass | Where Value10 -Contains $FilterOnBit | Export-Csv ./Filter10.csv

$TenthPass = Import-Csv ./Filter10.csv
$BitIsOn = 0
$BitIsOff = 0

if ($TenthPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}


for ($i = 0; $i -lt $TenthPass.Length; $i++) {
    Switch ($TenthPass.Value11[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$TenthPass | Where Value11 -Contains $FilterOnBit | Export-Csv ./Filter11.csv

$EleventhPass = Import-Csv ./Filter11.csv
$BitIsOn = 0
$BitIsOff = 0

if ($EleventhPass.Length -eq 1) {
    Read-Host -Prompt "One Binary value remains"
}

for ($i = 0; $i -lt $EleventhPass.Length; $i++) {
    Switch ($EleventhPass.Value12[$i]) {
        1 {$BitIsOn = $BitIsOn + 1}
        0 {$BitIsOff = $BitIsOff + 1}
    }
}

if ($BitIsOn -lt $BitIsOff) {
    $FilterOnBit = 1
}
elseif ($BitIsOn -eq $BitIsOff) {
    $FilterOnBit = 0
}
else {
    $FilterOnBit = 0
}

$EleventhPass | Where Value12 -Contains $FilterOnBit | Export-Csv ./Filter12.csv