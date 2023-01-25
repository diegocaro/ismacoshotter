while true
do
echo -n `date`; istats --value-only|tr '\n' '\t';
uptime|tr '\n' '\t'
sleep 10
echo
done
