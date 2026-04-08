#Get-Process

#Get-Process | Select-Object Name, Id, CPU, WorkingSet

#Get-Process | Select-Object Name, Id, CPU, WorkingSet | Format-Table -AutoSize

#Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 10 Name, Id, @{Name='MemMB';Expression={[math]::Round($_.WorkingSet/1mb,1)}}

#Get-Process | Where-Object { $_.WorkingSet -gt 50MB } | Sort-Object WorkingSet -Descending | Select-Object Name, Id, @{Name='MemMB';Expression={[math]::Round($_.WorkingSet/1mb,1)}}

#Get-Process | Measure-Object
#Get-Process | Measure-Object WorkingSet -Sum -Average -Maximum

#Get-ChildItem -Path /workspaces -Recurse -File | Measure-Object

#Get-Process | Select-Object Name, Id, CPU, @{Name='MemMB';Expression={[math]::Round($_.WorkingSet/1mb,1)}} | Export-CSV -Path ./process-report.csv -NoTypeInformation

Import-Csv ./process-report.csv | Select-Object -first 5 | Format-Table