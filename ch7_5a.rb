beers = 99

while beers != 0
	if beers != 1
	puts beers.to_s + ' bottles of beer on the wall ' + beers.to_s + ' bottles of beer, you take one down and pass it around '
	else
	puts beers.to_s + ' bottle of beer on the wall ' + beers.to_s + ' bottle of beer, you take it down and pass it around - YOU\'RE WASTED'	
	end
	beers -= 1
end 