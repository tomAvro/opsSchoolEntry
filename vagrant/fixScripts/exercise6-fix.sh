#!/bin/bash
#add fix to exercise6-fix here
hostname=`hostname`
export SERVER_DES=server1
if [[ $hostname == *"server1"* ]]; then
  export SERVER_DES=server2
fi
declare -a args=("$@")
dest_path=${args[$#-1]}
total=0
for ((i=0;i<=$#-2;i++));do
echo $dest_path
scp -i ~/.ssh/id_rsa.pub ${args[$i]} vagrant@$SERVER_DES:$dest_path
echo $(stat -c "%s" ${args[$i]})
total=$(($(stat -c "%s" ${args[$i]}) + $total))
done
echo $total
