#Joel Cook
# PowerShell Sript to show running services

#param is for command line arg, auto default (*) value if no arg given
param($nameReq = "*")

#start of opening message
""
write-host "Script execution beings..." -ForegroundColor Yellow
""
write-host "Input parameter verified..." -ForegroundColor Green
""
write-host "The following" -ForegroundColor Red -NoNewline
write-host " $nameReq " -ForegroundColor Green -NoNewline
write-host "services are currently running on: " -ForegroundColor Red -NoNewline
write-host "$env:computername" -ForegroundColor Magenta
""
#end of message

#get-service layout
Get-Service -Displayname $nameReq | Where-Object {$_.Status -eq "Running"} | select name, displayname, servicetype, status | sort state, name

#ending message
""
write-host "List of Running Services Complete..." -ForegroundColor Blue -BackgroundColor Yellow
""
write-host "Scripting terminating..." -ForegroundColor Red -BackgroundColor Black
