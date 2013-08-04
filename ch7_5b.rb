response = ' '
bye_counter = 0

puts 'What do you want to say to grandma'

while bye_counter != 2

	#random number generator
	year_rand = rand(21)
	full_year = year_rand + 1930
	
	#storing last response to compare
	last_response = response
	response = gets.chomp

	#incrementing bye_counter for exit - three BYE's in a row
	if response == 'BYE' and last_response == 'BYE'
		bye_counter += 1 
	else
		bye_counter = 0
	end
		
	#grandma's script	
	if response != response.upcase
		puts 'HUH? ! SPEAK UP, SONNY!'
	else
		puts 'NO, NOT SINCE ' + full_year.to_s + '!'
	end
end