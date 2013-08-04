print 'please enter start year: '
start_year = gets.chomp
print 'please enter end year: '
end_year = gets.chomp

if end_year.to_i <= start_year.to_i
	puts 'end year needs to be greater than start year'
	abort("You suck")
end

year_counter = start_year.to_i

while year_counter <= end_year.to_i
	if year_counter % 4 == 0 && year_counter % 100 != 0
	puts '' + year_counter.to_s + ''
	elsif year_counter % 100 == 0 && year_counter % 400 == 0
			puts '' + year_counter.to_s + ''
	end  
	year_counter += 1
end
