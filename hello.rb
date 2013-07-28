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
		puts "\n"
		puts "John's Math Tutor Test App"
		# What it was meant to be from the beginning I forgot what I wanted
		puts "\n"
		puts "+ - * / + - * / + - */ + - * / + - * / + - * / + "
		puts "+ Type \"A\" and hit enter for addition          +"
		puts "+ Type \"S\" and hit enter for subtraction       +"
		puts "+ Type \"M\" and hit enter for multiplication    +"
		puts "+ Type \"D\" and hit enter for division          +"
		puts "+ Type \"Q\" and hit enter to quit               +"
		puts "+ - * / + - * / + - */ + - * / + - * / + - * / +"
		answer = gets.chomp
		menuBE(answer)
	end
end

def add(first, second)
	two = first + second
	puts "   #{first}"
	puts "   #{second}"
	puts " +__________"
	print " = "
	one = gets.chomp.to_i
	print "\n\n\n"
	print "#{one} #{two} "
	if one == two then
		puts "Correct"
	else
		puts "Wrong"
	end
end

def subt(first, second)
	two = first - second
	puts "   #{first}"
	puts "   #{second}"
	puts " -__________"
	print " = "
	one = gets.chomp.to_i
	print "\n\n\n"
	print "#{one} #{two} "
	if one == two then
		puts "Correct"
	else
		puts "Wrong"
	end
end

def mult(first, second)
	two = first * second
	puts "   #{first}"
	puts "   #{second}"
	puts " *__________"
	print " = "
	one = gets.chomp.to_i
	print "\n\n\n"
	print "#{one} #{two} "
	if one == two then
		puts "Correct"
	else
		puts "Wrong"
	end
end

def divi(first, second)
	two = first / second
	puts "   #{first}"
	puts " /__________"
	puts "   #{second}"
	print "\n = "
	one = gets.chomp.to_i
	print "\n\n\n"
	print "#{one} #{two} "
	# I need a new if statement(the one below was too "C like"
	if one == two then
		puts "Correct"
	else
		puts "Wrong"
	end
end

def menuBE(choice)
	one = 1 + rand(10)
	two = 1 + rand(10)
	case choice
	when "A", "a"
		add(one, two)
	when "S", "s"
		subt(one, two)
	when "M", "m"
		mult(one, two)
	when "D", "d"
		divi(one, two)
	end

end

menu
