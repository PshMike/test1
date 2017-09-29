Import-Module Pegasus

$CIs = Get-VUMCWindowsCIs -Environment All -Category All

foreach ($CI in $CIs)
{

    $CI | Export-Clixml -Path ("\\miw004wp-sccm\d$\cmdb\{0}.xml" -f $ci.Name)

}

