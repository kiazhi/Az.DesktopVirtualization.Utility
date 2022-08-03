# Lint with PSScriptAnalyzer

@("CmdletDesign", "ScriptingStyle", "CodeFormatting", "ScriptSecurity", "PSGallery") | ForEach-Object -Process `
{
    Write-Output `
        -InputObject ("INFO: {0} Analysing module with PSScriptAnalyzer {1} setting" -f `
            $(Get-Date -Format "yyyy-MM-dd HH:mm:ss zzzz") `
            , $_)

    Invoke-ScriptAnalyzer `
        -Path "./src/Az.DesktopVirtualization.Utility/" `
        -Settings $_ `
        -Recurse `
        -Outvariable Issues

    $Errors   = $Issues.Where({$_.Severity -eq 'Error'})
    $Warnings = $Issues.Where({$_.Severity -eq 'Warning'})
    if ($Errors) {
        Write-Error `
            -Message ("ERROR: {0} - There were {1} errors and {2} warnings total." -f `
                $(Get-Date -Format "yyyy-MM-dd HH:mm:ss zzzz") `
                , $($Errors.Count) `
                , $($Warnings.Count)) `
            -ErrorAction Stop
    }
    else {
        Write-Output `
            -InputObject ("INFO: {0} - There were {1} errors and {2} warnings total." -f `
                $(Get-Date -Format "yyyy-MM-dd HH:mm:ss zzzz") `
                , $($Errors.Count) `
                , $($Warnings.Count))
    }
}
