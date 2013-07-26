#!/usr/bin/ruby

# Conversion from "Hello World program" into calculator program
# Written By John Scuteri, Based off a C++ calculator program.
# Menu
#$answer
# Ruby Weirdness, the above answer is as unacceptable as a goto in C

def menu
	answer = ""
	while not %w(Q q).include? answer do
		# Not working below
		# while (!(answer == 'Q') | !(answer == 'q'))
		puts "John's Calculator"
		puts "Type \"A\" and hit enter for addition"
		puts "Type \"S\" and hit enter for subtraction"
		puts "Type \"M\" and hit enter for multiplication"
		puts "Type \"D\" and hit enter for division"
		puts "Type \"Q\" and hit enter to quit"
		answer = gets.chomp
	end
end
menu
