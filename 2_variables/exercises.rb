# exercise 1
puts "____________________"
puts "exercise 1"
puts "____________________"

puts "Please enter your name: "
name = gets.chomp
puts "Hello #{name}, welcome to...MY DUNGEON"

# exercise 2
puts "____________________"
puts "exercise 2"
puts "____________________"
puts "How old are you, #{name}?"
age = gets.chomp
4.times do |i| 
    puts "In #{i * 10} years, you will be #{(i*10) + age.to_i}"
end

# exercise 3
puts "____________________"
puts "exercise 3"
puts "____________________"
10.times do |i|
    puts name
end 

# exercise 4
puts "____________________"
puts "exercise 4"
puts "____________________"
puts "What is your last name, #{name}?"
last_name = gets.chomp
full_name = "#{name} #{last_name}"
puts "ooooh, so your full name is, #{full_name}, eh?"

# exercise 5
puts "____________________"
puts "exercise 5"
puts "____________________"
puts "the first program will print 3, as x is incremented each iteration (total of 3)"
puts "the second program will provide an error, as x is not in this scope (it was inside of a instanced scope)"