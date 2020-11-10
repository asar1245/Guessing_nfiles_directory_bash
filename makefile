
README.md:
	touch README.md
	echo "#Guessing the number of files in the current directory \n" > README.md
	echo "##Date and time of running: \n" >> README.md 
	date -r ./makefile "+%m-%d-%Y %H:%M:%S" >> README.md
	echo "##Number of lines: \n" >> README.md
	wc -l guessinggame.sh | awk '{ print $1 }' >> README.md
