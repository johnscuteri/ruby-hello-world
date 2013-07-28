#!/usr/bin/ruby

# Conversion from "Hello World program" into calculator program
# Written By John Scuteri, Based off a C++ calculator program.
# Menu
#$answer
# Ruby Weirdness, the above answer is as unacceptable as a goto in C
srand

def menu
	answer = ""
	while not %w(Q q).include? answer do
		# Not working below
		# while (!(answer == 'Q') | !(answer == 'q'))
		one = 1 + rand(10)
		two = 1 + rand(10)
		puts "John's Math Teacher app"
		# What it was meant to be from the beginning I forgot what I wanted
		puts "Type \"A\" and hit enter for addition"
		puts "Type \"S\" and hit enter for subtraction"
		puts "Type \"M\" and hit enter for multiplication"
		puts "Type \"D\" and hit enter for division"
		puts "Type \"Q\" and hit enter to quit"
		answer = gets.chomp
		if %w(A a).include? answer
			add(one, two)
		end
	end
end

def add(first, second)
	two = first + second
	puts "   #{first}"
	puts "   #{second}"
	puts " +__________"
	print " = "
	one = gets.chomp
	print "\n\n\n"
	print "#{one} #{two} "
	if one == two then
		puts "Correct"
	else
		puts "Wrong"
	end
end

menu