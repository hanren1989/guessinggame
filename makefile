all: README.md

README.md: guessinggame.sh

	echo "# Guessing game project" > README.md
	echo "" >> README.md
	echo "Date and Time: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of files in this directory : $$(ls -1 | wc -l)" >> README.md
	echo "Number of lines in guessinggame.sh : $$(wc -l < guessinggame.sh" >> README.md
