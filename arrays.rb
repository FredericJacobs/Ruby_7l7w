# Printing the content of an array of sixteen numbers, four numbers at a time, just using "each".

an_array = Array (1..16)

temp_stack = []

an_array.each{|x|

	temp_stack.push(x);

	if temp_stack.size == 4
		puts temp_stack.join(" ")
		temp_stack = []
	end
}

# Now do the same with Enumberable

an_array.each_slice(4){|x|
 puts x.join(" ")
}
