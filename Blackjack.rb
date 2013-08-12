require 'pry'

def total_value(arr)
	score = 0
	a_flag = 0
	arr.each do |val|
		if val == 1
			a_flag = 1
		end
		score += val
	end
	if a_flag == 1 and score - 1 < 11
		score = score + 10
	end
	score
end

puts('Welcome to Blackjack 1.0 - most basic implementation of Blackjack')
puts('What\'s your name?')
player = gets.chomp

puts('Hello ' + player.to_s + ' please wait while we prepare cards')

deck_of_cards = [1,1,1,1, 2,2,2,2, 3,3,3,3, 4,4,4,4, 5,5,5,5, 6,6,6,6, 7,7,7,7, 8,8,8,8, 9,9,9,9, 10,10,10,10, 11,11,11,11, 12,12,12,12, 13,13,13,13]
deck_of_cards.shuffle!

player_hand = []
dealer_hand = []

player_hand << deck_of_cards.pop
dealer_hand << deck_of_cards.pop
player_hand << deck_of_cards.pop
dealer_hand << deck_of_cards.pop

player_val = total_value(player_hand)
dealer_val = total_value(dealer_hand)

puts 'You have: ' + player_hand[0].to_s + ' and ' + player_hand[1].to_s + ' total: ' + player_val.to_s
puts 'Dealer has: ' + dealer_hand[0].to_s + ' and ' + dealer_hand[1].to_s + ' total: ' + dealer_val.to_s

if player_val == 21
  puts "Congratulations, you hit blackjack! You win!"
  exit
end

while player_val < 21
  puts "What would you like to do? 1) hit 2) stay"
  hit_or_stay = gets.chomp

  if !['1', '2'].include?(hit_or_stay)
    puts "Error: you must enter 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts "You chose to stay."
    break
  end

  new_card = deck_of_cards.pop
  puts "Dealing card to player: #{new_card}"
  player_hand << new_card
  player_val = total_value(player_hand)
  puts "Your total is now: #{player_val}"

  if player_val == 21
    puts "Congratulations, you hit blackjack! You win!"
    exit
  elsif player_val > 21
    puts "Sorry, it looks like you busted!"
    exit
  end
end

if dealer_val == 21
  puts "Sorry, dealer hit blackjack. You lose."
  exit
end

while dealer_val < 17
  #hit
  new_card = deck_of_cards.pop
  puts "Dealing new card for dealer: #{new_card}"
  dealer_hand << new_card
  dealer_val = total_value(dealer_hand)
  puts "Dealer total is now: #{dealer_val}"

  if dealer_val == 21
    puts "Sorry, dealer hit blackjack. You lose."
    exit
  elsif dealer_val > 21
    puts "Congratulations, dealer busted! You win!"
    exit
  end
end

puts "Dealer's cards: "
dealer_hand.each do |card|
  puts "=> #{card}"
end
puts ""

puts "Your cards:"
player_hand.each do |card|
  puts "=> #{card}"
end
puts ""
if dealer_val > 21
	puts "Dealer busted! Congratulations, you win"
	exit
elsif player_val > 21
	puts "You busted! Sorry, you lose"
	exit
end

if dealer_val > player_val 
  puts "Sorry, dealer wins."
elsif dealer_val < player_val
  puts "Congratulations, you win!"
else
  puts "It's a tie!"
end
