def questionSeparator(num)
    puts "exercise #{num}"
    puts "____________________"
end 

# exercise 1
questionSeparator(1)

def is3inArray(arr)
    return arr.select { |e| e == 3 }
end 

e1array = [1, 3, 5, 7, 9, 11]
puts is3inArray(e1array)

# exercise 2 
puts "exercise 2"
puts "____________________"

# 1. arr = ["b", "a"]
#   arr = arr.product(Array(1..3))
#   arr.first.delete(arr.first.last)
#
# 2. arr = ["b", "a"]
#   arr = arr.product([Array(1..3)])
#   arr.first.delete(arr.first.last)

puts "1. will return array with the product of the original array and values 1..3"
puts "      [['b',1],['b',2],['b',3],['a',1]...,['a',3]"
puts "  then will delete (destructively) 1 from the first item (['b',1])"

puts "2. will return array with product of original with [1,2,3]"
puts "      [['b',[1,2,3]], ['a',[1,2,3]]"
puts "  then will delete (destructively) [1,2,3] from the first item"

# exercise 3
puts "exercise 3"
puts "____________________"
# arr = [["test", "hello", "world"],["example", "mem"]]

puts "You can return the 'example' by calling arr.last.first"
puts [["test", "hello", "world"],["example", "mem"]].last.first

# exercise 4
puts "exercise 4"
puts "____________________"

puts "1 and 3 will return value at index 5 (8), while 2 will return error"
puts "wrong! 3 will return value at index 5 (8), and 2 will return error, however..."
puts "1 (arr.index(5)) will return the index that contains the value '5'"

# exercise 5
puts "exercise 5"
puts "____________________"

puts "a = 'e', b = 'A', c = nil"

# exercise 6
questionSeparator(6)

puts "you are entering the value instead of the index of the array. You will need to: "
puts "provide the index value (3, or .last), so...arr[3] = 'jody'"

# exercise 7
questionSeparator(7)

arr1 = [1,2,3,4,5]
def add2toItems(arr)
    arr.map { |e| e + 2 }
end 

arr2 = add2toItems(arr1)

p arr1
p arr2