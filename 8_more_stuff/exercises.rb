def qS(num)
    puts " "
    puts " "
    puts "======================"
    puts "question #{num}"
    puts "======================"
end 

# exercise 1
qS(1)

e1array = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]
p e1array.select { |movie| /lab/.match(movie.downcase) }

# exercise 2
qS(2)

puts "prints gibberish because the block is not called (so will not perform the"
puts "puts statement). Gibberish is a strong word...it prints the block data"
puts "in the Proc form"

# exercise 3
qS(3)

puts "exception handling is preventing an application from crashing, and"
puts "providing an alternative action when an error has occured (through the"
puts "use of 'rescue'. Helps to continue with flow control by momentarily altering it "
puts "to handle the error"

# exercise 4
qS(4)

puts "added .call to the execute method"
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# exercise 5
qS(5)

puts "the reason for the error is because the parameter takes in a non-block"
puts "variable. In order to identify the argument to be passed in as a block, we"
puts "use the & symbol before the block parameter name (&block)"