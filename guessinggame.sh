#!usr/bin/bash
#my script 

#implementation of help flag
for i in "$@"
do 
  case $ in 
    -h | --help) 
     echo "try to guess the number of ifles in fis folder"
     ;;
   esac
done

# request the number of files
echo "make a guess of the number of files in this folder "

#the next commad counts the number of files in a directory, not taking into account folders or sym links.
goal = ls -l | grep -v ^l | grep -v ^d | wc -l 

#request the guess
read guess
echo $guess


#start the guesssing game - while (incorrect) -loop
while [[ $goal -ne $guess ]]
do 
   #check if the number must be  bigger 
   [[ $goal -gt $guess]] && echo "bigger"
   
   #check if the number must be smaller
   [[ $goal -lt $guess]] && echo "smaller"
   
   #check if the guess is correct
   [[ $goal -eq $guess]] && break
 
   echo "other guess?"
   read guess
done

echo "WELL DONE!"
