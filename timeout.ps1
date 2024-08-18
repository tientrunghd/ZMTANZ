$running = $true
$i = 6000

do {
    try {
        Write-Host $i
    }
    catch {
        Write-Host "Unable to write to console. Cancelling workflow."
        Stop-Workflow
    }
    Sleep 60
    $i--
} while ($i -gt 0 -and $running)

if (!$running) {
    Write-Host "Workflow was cancelled."
} else {
    Write-Host "Workflow completed successfully."
}
