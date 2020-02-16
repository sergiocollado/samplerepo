README.md: 
    ##The title of the project.
	echo "this is the guessinggame" > README.md
	
	##The date and time at which make was run.
	echo "this command was executed at: " >> README.md
	echo `date` >> README.md
	
	##The number of lines of code contained in guessinggame.sh.
	echo "the number of lines in the file guessingame.sh is: " 
	wc -l guessinggame.sh >> README.md
