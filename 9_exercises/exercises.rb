def qS(num)
    puts " "
    puts " "
    puts "======================"
    puts "question #{num}"
    puts "======================"
end 

# exercise 1
qS(1)

e1array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

e1array.each { |n| p n }

# exercise 2
qS(2)

(e1array.select { |n| n > 5 }).each { |n| p n }

# exercise 3
qS(3)

e2array = e1array.select { |n| n > 5 }

e3array = e2array.select { |n| (n % 2) == 1 }
p e3array

# exercise 4
qS(4)

e4array = e1array.push(11).unshift(0)
p e4array

# exercise 5
qS(5)

e5array = e4array
e5array[e5array.length-1] = 3
p e5array

# exercise 6
qS(6)

e6array = e5array.uniq
p e6array

# exercise 7
qS(7)

puts "the main difference between an array and hash is that an array is an" 
puts "index-based ordered list, while a hash is not indexed-based, or an ordered"
puts "list. Hashes are a collection of key/value pairs"

# exercise 8
qS(8)

e8hash = {:ace => "first", cata: "rush"}
e8hash[:deuce] = "orangatan"
p e8hash

# exercise 9
qS(9)

e9h = {a:1, b:2, c:3, d:4}

puts "to retrieve value of key 'b', we use e9h[:b]"
p e9h[:b]

puts "to add {:e:5} to the hash, we can do e9h[:e] = 5"
e9h[:e] = 5
p e9h

puts "to remove all key/value pairs with a value under 3.5, we can use select"
puts "so...e9h = e9h.select {|k,v| v > 3.5 }"
e9h = e9h.select {|k,v| v > 3.5 }
p e9h

puts " "
puts "or...e9h.delete_if {|e| e > 3.5}"

# exercise 10
qS(10)

puts "yes to both. hashes can have arrays as values, and arrays can have hashes as values"
e10hash = {:ace => [1,2,3,4],:double_agent => ['a','b','c']}
e10array = [{:whoa=>'maaami'},{york:'shire'}]
p "a hash with arrays as values: #{e10hash}"
p "an array with hashes as values: #{e10array}"

# exercises 11
qS(11)

puts "I like devdocs.io, as their UI and layout is nicest I've seen"

# exercise 12
qS(12)

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def updateContacts(contacts, contact_data)
    newHash = {}
    contacts.each { |c|
        firstName = (c[0].split(" "))[0].downcase
        
        data = contact_data.select { |d| d[0].include?(firstName)}
        if data
            c[1] = data
            newHash[c[0]] = data
        end 
    }
    return newHash
end 

contacts = updateContacts(contacts, contact_data)
p contacts

# exercise 13
qS(13)

puts "to reference the contact's email, you can reference it by contacts[name_of_client][0][0]"
puts "the two [0]'s reference the data of the client, then the first item (the email) of the user"

p contacts["Joe Smith"][0][0]
p contacts["Sally Johnson"][0][2]

# exercise 14
qS(14)


contact_data2 = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts2 = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email,:address,:phone]

contacts2.each_with_index { |(name, hash), i|
    fields.each { |field| 
        hash[field] = contact_data2[i].shift
    }
}

p contacts2

# exercise 15
qS(15)

e12arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p e12arr.delete_if { |w| w.start_with?('s') }


# exercise 16
qS(16)

e16arr = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
e16arr = (e16arr.map { |s| s.split(" ") }).flatten
p e16arr

# exercise 17
qS(17)

puts "it'd print 'these hashes are the same!"