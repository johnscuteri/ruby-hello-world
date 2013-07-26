#!/usr/bin/ruby

# Conversion from "Hello World program" into calculator program
# Written By John Scuteri, Based off a C++ calculator program.
# Menu
$answer
while not %w(Q q).include? $answer do
# Not working below
# while (!($answer == 'Q') | !($answer == 'q'))
	puts "John's Calculator"
	puts "For addition type \"A\" and hit enter"
	puts "For subtraction type \"S\" and hit enter"
	puts "For multiplication type \"M\" and hit enter"
	puts "For division type \"D\" and hit enter"
	puts "To quit type \"Q\" and hit enter"
	$answer = gets.chomp
end