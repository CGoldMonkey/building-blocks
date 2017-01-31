# building-blocks

This repository will contanin the caesar cipher project, stock picker project,
substrings project.

Caesar Cipher: Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.

	You will need to remember how to convert a string into a number.
		Using .ord to convert to ASCII value and .chr to convert back to 
		a string.  letter.ord gives the ascii value and letter.chr back to letter.
    Don't forget to wrap from z to a.
    	Wrapped by checking if the letter.ord + shift was greater than the 
    	ascii number for z.  If it was then shifted by (shift-26) as there are
    	26 number in the alphabet

    Don't forget to keep the same case.
    	Checket for /[A-Z]/ and if it was not then it was lowercase

    Also remember to leave exclamation characters alone.
    	letter =~ /[^A-Za-z]/ then just print it

    Notes: I repeat myself a few times.  I can probably come back to fine tune it
    and make the code neater.

Stock Picker Project
	General Task.  stock_picker method that will take in an array of stock 
	prices, one for each hypothetical day.  Have it return a pair of days 
	showing the best day to buy and sell.  So buy low and sell high.

	You must buy before you sell.

Substrings Project
	General Task: substrings method that takes a word as the first arguement and 
	an array of valid substrings (your dictionary) as the second arguement.  Have
	it return a hash listing each substring (case insensitive) that was found in
	the original string and the number of times it was found.

	Make sure it can handle multiple words.