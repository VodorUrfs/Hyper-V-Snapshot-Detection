# script to identify all VM's and if each one has a snapshot currently in place
# script only returns true or false, script does not modify anything

# identify all server instances and put in array.
$identifyvm = (get-vmsnapshot *).Path

# gets snapshotpath for each vm 
foreach ($snapshotpath in $identifyvm)
{

if(test-path $snapshotpath)
{

Write-Host "<-Start Result->"
write-host "CSMon_Result=Snapshot Detected"
Write-Host "<-End Result->"

}

}
