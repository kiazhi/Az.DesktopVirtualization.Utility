# Lint with PSScriptAnalyzer

@("CmdletDesign", "ScriptingStyle", "CodeFormatting", "ScriptSecurity", "PSGallery") | ForEach-Object -Process `
{
    Write-Output -InputObject "Analysing module with PSScriptAnalyzer $_ setting"
    Invoke-ScriptAnalyzer `
        -Path "./src/Az.DesktopVirtualization.Utility/" `
        -Settings $_ `
        -Recurse `
        -Outvariable Issues

    $Errors   = $Issues.Where({$_.Severity -eq 'Error'})
    $Warnings = $Issues.Where({$_.Severity -eq 'Warning'})
    if ($Errors) {
        Write-Error -Message "There were $($Errors.Count) errors and $($Warnings.Count) warnings total." -ErrorAction Stop
    }
    else {
        Write-Output -InputObject "There were $($Errors.Count) errors and $($Warnings.Count) warnings total."
    }
}
