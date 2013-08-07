print('Please enter first number: ')
first_num = gets.chomp
print('Please enter second number: ')
second_num = gets.chomp
print('Please select operation 1) add, 2) subtract 3) multiply 4) divide :')
operation_select = gets.chomp

if (operation_select.to_i == 1)
	puts('sum equals: ' + (first_num.to_i + second_num.to_i).to_s)
elsif (operation_select.to_i == 2)
	puts('sum equals: ' + (first_num.to_i - second_num.to_i).to_s)
elsif (operation_select.to_i == 3)
	puts('sum equals: ' + (first_num.to_i * second_num.to_i).to_s)
elsif (operation_select.to_i == 4)
	puts('sum equals: ' + (first_num.to_f / second_num.to_f).to_s)
end
