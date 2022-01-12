#! /bin/bash
if [ -f todolist.txt ]
then
echo "Exist"
else
touch todolist.txt
fi

saveTask(){
read -p "Enter your task " task
echo $task>>todolist.txt
}


showTask(){
cat todolist.txt
}

while [ true ]
do
 echo "1:Enter task & save "
 echo "2:Enter task & save & exit"
 echo "3:Show todolist"
 echo "4:Exit"
 read -p "Choice " input
 if [ $input -eq 1 ]
  then
   saveTask
 elif [ $input -eq 2 ]
  then
   saveTask
   break
 elif [ $input -eq 3 ]
  then
   showTask
 elif [ $input -eq 4 ]
  then
   break
 else
  echo "Wrong Choic"
fi
done





