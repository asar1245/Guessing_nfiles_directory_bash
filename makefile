
README.md:
	touch README.md
	echo "Guessing the number of files in the current directory" > README.md
	echo "Date and time of running: " >> README.md 
	date -r ./makefile "+%m-%d-%Y %H:%M:%S" >> README.md
	echo "Number of lines: " >> README.md
	wc -l guessinggame.sh | awk '{ print $1 }' >> README.md
