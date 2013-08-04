array = []
yn = ' '

while  yn != ''
	print 'give me words... num num num: '
	yn = gets.chomp
	array << yn
end
array.pop
puts array.sort