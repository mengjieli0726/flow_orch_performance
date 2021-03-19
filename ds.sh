#/bin/sh
start_time=`date +%s.%3N`
echo "Start applying: ${start_time}"



for ((i=1;i<=10000;i++))
#for ((i=1;i<=10;i++))
do
{

	kubectl create -f pipelinerun.yaml

 }&              



done    
wait  
finished_time=`date +%s.%3N`
time_diff=`echo ${finished_time}-${start_time}|bc`
echo "Finished applying: ${finished_time}"
echo "time cost: ${time_diff}"

