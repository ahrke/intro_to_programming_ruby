# exercise 1
puts "____________________"
puts "exercise 1"
puts "____________________"
firstName = "David"
lastName = "Nguyen"
name = "#{firstName} #{lastName}"

puts name

# exercise 2
puts "____________________"
puts "exercise 2"
puts "____________________"
ex_2_num = 5287
thousandth = ex_2_num / 1000
hundredth = ex_2_num%1000 / 100
tens = ex_2_num%1000%100 / 10
ones = ex_2_num%10

puts "#{thousandth}, #{hundredth}, #{tens}, #{ones}"

# exercise 3
puts "____________________"
puts "exercise 3"
puts "____________________"
movieList = {:inception=>2016,:baraka=>"don't know",:avengers4=>2018}

movieList.each { |i| puts i }

# exercise 4
puts "____________________"
puts "exercise 4"
puts "____________________"
movie_list = [2016,"don't know", 2018]

movie_list.each { |i| puts i }

# exercise 5
puts "____________________"
puts "exercise 5"
puts "____________________"
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# exercise 6
puts "____________________"
puts "exercise 6"
puts "____________________"
puts 4.45 * 4.45
puts 53.121 * 53.121

# exercise 7
puts "____________________"
puts "exercise 7"
puts "____________________"
puts "That message may imply that you closed a hash declaration with a ) instead of }"
