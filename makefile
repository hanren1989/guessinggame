all: README.md

README.md: guessinggame.sh

	echo "# Guessing game project" > README.md
	echo "" >> README.md
	echo "Date and Time: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh : $$(wc -l < guessinggame.sh" >> README.md
