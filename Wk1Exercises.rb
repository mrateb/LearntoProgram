puts('1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.')
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|arr| puts arr}

puts('2. Same as above, but only print out values greater than 5.')

arr.each do |arr|
	if arr > 5
		puts arr
	end
end

puts('3. Now, using the same array from 2, use the select method to extract all odd numbers into a new array.')
odds = arr.select {|arr| arr%2 != 0}
puts odds

puts('4. Append 11 to the end of the array. Prepend 0 to the beginning.')
arr << 11
arr.unshift(0)
puts arr

puts('5. Get rid of 11. And append a 3.')
arr.pop
arr << 3
puts arr

puts('6. Get rid of duplicates without specifically removing any one value.')
puts arr.uniq


puts('7. What\'s the major difference between an Array and a Hash?')
puts('Order')

puts('8. Create a Hash using both Ruby 1.8 and 1.9 syntax.')
h = Hash["a" => 1, "b" => 2, "c" => 3, "d" => 4]
puts h

puts('Suppose you have a h = {a:1, b:2, c:3, d:4}')

puts('9. Get the value of key "b".')
puts "#{h['b']}"

puts('10. Add to this hash the key:value pair {e:5}')
h[:e] = 5 
puts h

puts('13. Remove all key:value pairs whose value is less than 3.5')
h.delete_if {|k,v| v<3.5}
puts h

puts('14. Can hash values be arrays? Can you have an array of hashes? (give examples)')
h2 = Hash["a" => [1,2,3], "b" => 7]
puts h2

puts('15. Look at several Rails/Ruby online API sources and say which one your like best and why.')
puts('still undecided, will decide later as course progresses for now ruby-doc works')