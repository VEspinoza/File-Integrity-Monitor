Write-Host ""
Write-Host "What would you like to do?"
Write-Host "A) Collect new Baseline?"
Write-Host "B) Begin monitoring files with saved Baseline"

$response = Read-Host -Prompt "Please enter 'A' or 'B' "
Write-Host ""

Function Calculate-File-Hash($filepath){
    Get_FileHash -Path $filepath -Algorithm SHA512
    return $filehash
}

$hash = Calculate-File-Hash "path\to\file"

if ($reponse -eq "A".ToUpper()){
    #Calculate Hash from the target files and store in baseline.txt
    Write-Host "Calculate Hashes, make new baseline.txt" -ForegroundColor Cyan

}

elseif($response -eq "B".ToUpper()){
    #Begin monitoring files with saved Baseline
    Write-Host "Read existing baseline.txt, start monitoring files." -ForegroundColor Yellow
}