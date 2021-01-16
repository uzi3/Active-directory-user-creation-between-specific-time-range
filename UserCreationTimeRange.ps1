$domain= Get-ChildItem env:userdomain | select -ExpandProperty value
$start = Get-Date -Date 01-07-2017
$end = Get-Date -Date 30-09-2017 -Hour 23 -Minute 59 -Second 59
Get-ADUser -Filter {created -ge $start -and created -le $end} -Properties * | select samaccountname, created, userprincipalname | Export-Csv D:\$domain.csv -Append -NoTypeInformation
