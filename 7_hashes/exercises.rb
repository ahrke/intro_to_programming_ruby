def qS(num)
    puts " "
    puts " "
    puts "======================"
    puts "question #{num}"
    puts "======================"
end 

# exercise 1
qS(1)

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

def getImmediateFamMembers(hashHere)
    tempHash = hashHere.select { |k,v| (k == :brothers) || (k == :sisters) }
    arrOut = []
    tempHash.each { |k, v| arrOut.push(v) }
    return arrOut
end 

immFamily = getImmediateFamMembers(family)
puts immFamily

# exercise 2
qS(2)

puts "The difference between merge and merge! is that merge! is destructive (it will mutate the original hash)"

puts "we'll create a new hash, called hash1, and give it the following"
puts "{:name : 'sammich', :age : 30, :likes : 'long walks'}"
puts "we'll have a second hash, hash2, and give it {:season : summer}"
puts "then we'll display both, use merge on hash1, print, then merge!, print"

hash1 = {name: 'sammich', age: 30, likes: 'long walks'}
hash2 = {season: 'summer'}
p "hash1 is #{hash1}"
p "hash2 is #{hash2}"
puts "___________________"
p "the result of hash1.merge(hash2) is...#{hash1.merge(hash2)}"
p "hash1 is now #{hash1}"
puts "___________________"
p "the result of hash1.merge!(hash2) is...#{hash1.merge!(hash2)}"
p "hash1 is now #{hash1}"
puts "___________________"
puts "we can see that after the merge!, hash1 was changed to contain whatever hash2 contained"
puts "while with merge, hash1 remained the same after use"

# exercise 3
qS(3)

def printHashKeys(hash)
    p hash.keys
end 

def printHashValues(hash)
    p hash.values
end 

def printHashKeyAndValues(hash)
    hash.each { |k,v| p "#{k}: #{v}" }
end 

puts "...we'll use the 'family' hash"
printHashKeys(family)
printHashValues(family)
printHashKeyAndValues(family)

# exercise 4
qS(4)

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "you can get the name of this hash"
puts "  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}"
puts "by referencing the key 'name' (so...person[:name])"
puts "_____________________"
puts "result of person[:name] is: #{person[:name]}"

# exercise 5
qS(5)

puts "you can use the hash method 'select' to see if the hash contains desired key/value"
puts "result of hash1.select { |k,v| v == 'sammich'}"
puts hash1.select { |k,v| v == 'sammich'}
puts "result of hash1.select { |k,v| v == 'david'}"
puts hash1.select { |k,v| v == 'david'}

def containValue?(hash,value)
    hash.select { |k,v| v == value}
end 

puts "our method is.."
puts "def containValue?(hash,value)
    hash.select { |k,v| v == value}
end "
puts "result from containValue?(hash1,'sammich'), and containValue?(hash1,'david')"
puts containValue?(hash1,'sammich')
puts containValue?(hash1,'david')

puts "___________"
puts "simpler way is using has_value? (hash1.has_value?('sammich'))"
puts hash1.has_value?('sammich')

# exercise 6
qS(6)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
puts "to solve this, we can sort each string, and compare each string to each other"
puts "the ones that match, will be placed into an array together"
puts "once a match has been made, we will remove the string from the original array"
puts "continue until there are no more values in the array"
def findAnagram(arr,word)
    tempWord = word.split("").sort
    tempArr = [word]
    newArr = arr.select { |e| e.split("").sort == tempWord }
    tempArr.push(newArr)
    tempArr.flatten.each { |e| 
        if arr.include?(e)
            arr.delete(e)
        end 
    }
    p tempArr.flatten
end 

def anagramArray(arr)
    tempArr = arr
    newArray = []
    tempArr.each { |e|
        newArray.push(findAnagram(tempArr,e))
    }
    p newArray
end 

anagramArray(words)
    
puts "__________________"
puts "in the end, we created 2 methods, one main one that takes in original array"
puts "and a second which takes an array, and a word. With this combination, the second"
puts "method (we'll call it findAnagram) will go through array, splitting each word, and"
puts "sorting it, then comparing it to the given word (which is also sorted)"
puts "if there is a match, the word is pushed to an array, and the word itself"
puts "is deleted from the original array. The main method (anagramArray), will"
puts "loop through the given array, and use findAnagram on each word"

puts "______________"
puts "alternative...and much more efficient and beautiful is Launch School's solution"
words2 =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
result = {}

words2.each { |word|
    key = word.split("").sort.join
    if result.has_key?(key)
        result[key].push(word)
    else
        result[key] = [word]
    end 
}

p result
puts "however...this will make the first word in the anagram group the 'key'"
puts "(separating from the rest of the values), and also potentially mix up the"
puts "letters, making the word indistinguishable...so mine wins"

# exercise 7
qS(7)

puts "the first one will use a symbol x (:x) as the key"
puts "the second will use the string value of x, as the key"

# exercise 8
qS(8)

puts "b, there is no keys method for Array, as arrays do not use keys"