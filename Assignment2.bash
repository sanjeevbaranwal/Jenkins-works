#!/bin/bash
#set -vx
echo "enter the command to run on your server and the connected server"
read n
#command to run on your own server
$n
#list all the servers you want to get connected
hostnames=localhost,localhost
IFS=,
for i in $hostnames
do
echo "The connected server is "$i""
echo "your input is "
echo $cmd
ssh -t root@$i $n ;  
done


# we can replace the list like below
#hostnames=host1,host2,host3,host4,host5

