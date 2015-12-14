def shopping_list(l)
	l = l.split(', ').sort
	i = 1
	h = {}
	l.each do |s|
		k = s.downcase
		if h.has_value?(k) == false
			h["#{i}"] = k
			i += 1
		end
	end
	h
end

puts shopping_list('friends, eggplant, Eggplant, go to work, friends, eggplant')

