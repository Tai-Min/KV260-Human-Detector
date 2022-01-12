function GetSettings {
    param (
        [string]$File
    )
    Get-Content "$WinProjDrive`:\$WinProjPath\settings.ini" | ForEach-Object -Begin {$settings=@{}} -Process {$store = [regex]::split($_,'='); if(($store[0].CompareTo("") -ne 0) -and ($store[0].StartsWith("[") -ne $True) -and ($store[0].StartsWith("#") -ne $True)) {$settings.Add($store[0], $store[1])}}
    return $settings
}