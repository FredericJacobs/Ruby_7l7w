puts "Welcome to this stupid game, please guess a number between 1 and 100"

randomNumber = rand(100)

while ( (i=gets.to_i) != randomNumber)
  puts "Number is too high" if i > randomNumber
  puts "Number is too low" if i < randomNumber
end

puts "Right, you found #{randomNumber}"
