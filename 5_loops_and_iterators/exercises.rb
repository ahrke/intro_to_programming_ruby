# exercise 1
puts "exercise 1"
puts "____________________"

puts "returns the same array, as iterating does not alter original input"

# exercise 2
puts "exercise 2"
puts "____________________"

def stop_me()
    while true
        puts "Enter anything you'd like, enter stop to end: "
        str_here = gets.chomp
        if str_here.upcase == "STOP"
            break
        end 
        puts "you've entered ${str_here}"
    end 
end 

stop_me()

# exercise 3
puts "exercise 3"
puts "____________________"

e3_array = ["hello", "whoa", 1984, "etc"]

e3_array.each_with_index { |i, ind|
    p "#{ind}. #{i}"
}

# exercise 4
puts "exercise 4"
puts "____________________"

def countdown(num)
    puts num
    if num > 0
        countdown(num-1)
    end 
end 

countdown(6)