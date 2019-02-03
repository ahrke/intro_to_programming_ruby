# exercise 1
puts "____________________"
puts "exercise 1"
puts "____________________"

puts "1. will return false"
puts "2. will return false"
puts "3. false"
puts "4. returns true"
puts "5. returns true"

# exercise 2
puts "____________________"
puts "exercise 2"
puts "____________________"

def scream(str)
    if str.length > 10
        return str.upcase
    else
        return "Your input must be larger than 10 characters"
    end 
end 

puts scream("David Nguyen")

# exercise 3
puts "____________________"
puts "exercise 3"
puts "____________________"

def num_input()
    puts "Enter a value between 0-100, please"
    num_here = gets.chomp.to_i
    if num_here > 100
        puts "Your number is higher than 100...idiot"
    elsif num_here >= 50
        puts "Your number is between 50 and 100"
    else
        puts "Your number is under 50"
    end 
end 

num_input()


# exercise 4
puts "____________________"
puts "exercise 4"
puts "____________________"

puts "1. prints FALSE"
puts "2. prints 'did you get it right?"
puts "3. prints 'Alright now!"
        
# exercise 5
puts "____________________"
puts "exercise 5"
puts "____________________"

def num_input_w_case()
    puts "Enter a value between 0-100, please"
    num_ag = gets.chomp.to_i
    puts "your number is #{num_ag}"
    out = case num_ag
    when num_ag > 100
        "Your number is higher than 100...idiot"
    when num_ag >= 50
        "Your number is between 50 and 100"
    else
        "Your number is under 50"
    end 
    
    p out
end 

num_input_w_case()

# exercise 6
puts "____________________"
puts "exercise 6"
puts "____________________"

puts "the if statement was not closed using a 'end' expression"