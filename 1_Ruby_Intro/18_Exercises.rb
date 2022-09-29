#Ex1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |x| puts x }

#Ex2
new_arr = []
arr.each do |x|
  if x > 5
    new_arr << x
    puts x
  end
end

#Ex3
new_arr.select do |y|
  if y % 2 != 0
    puts y
  end
end

#Ex4
arr.prepend(0)
arr.append(11)
p arr

#Ex5
arr.delete(11)
arr.push(3)
p arr

#Ex6
arr.uniq!
p arr

#Ex8
harsh_lad = Hash.new
harsh_lad[:pepper] = "cat"
p harsh_lad

#Ex9
h = { a: 1, b: 2, c: 3, d: 4 }

h[:e] = 5

h.each do |x, y|
  if y < 3.5
    h.delete(x)
  end
end
p h

#Ex11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

cont_keys = contacts.keys
cont_arr = []
cont_keys.each do |x|
  m = x.split(" ")
  cont_arr << m[0]
end

cont_arr.map do |x|
  mail = x + "@email.com"
  p mail.downcase!
  if contact_data.each { |y| y.find_index(mail).nil? }
    if x + " Johnson" == "Sally Johnson"
      contacts["Sally Johnson"][:email] = contact_data[1][0]
      contacts["Sally Johnson"][:address] = contact_data[1][1]
      contacts["Sally Johnson"][:phone] = contact_data[1][2]
    elsif x + " Smith" == "Joe Smith"
      contacts["Joe Smith"][:email] = contact_data[0][0]
      contacts["Joe Smith"][:address] = contact_data[0][1]
      contacts["Joe Smith"][:phone] = contact_data[0][2]
    end
  end
end

p contacts

#Ex12
p ("Joess email address is: " + contacts["Joe Smith"][:email])
p ("Sallys phone number is: " + contacts["Sally Johnson"][:phone])

#Ex13
arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]

new_arr = arr.delete_if { |x| x.start_with?("s", "w") }

p new_arr

#Ex14
a = ["white snow", "winter wonderland", "melting ice",
     "slippery sidewalk", "salted roads", "white trees"]

a_split = a.map { |x| p x.split(" ") }

p a_split.flatten!

#Ex16_A
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = { "Joe Smith" => {} }
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#Ex16_B - This varioation doesnt match name to row index with email
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["pepper@email.com", "1B King Henrys Road", "07570711910"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = { "Joe Smith" => {}, "Sally Johnson" => {}, "Pepper Scigaj" => {}  }
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts

#Ex16_C - My updated version matching names with emailes
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["pepper@email.com", "1B King Henrys Road", "07570711910"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = { "Joe Smith" => {}, "Sally Johnson" => {}, "Pepper Scigaj" => {}  }
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  m = name.split
  mail = m[0] + "@email.com"
  mail.downcase!
  clean = contact_data.select { |x| x.find_index(mail).nil?.! }
  clean.flatten!
  fields.each do |field|
    hash[field] = clean.shift
  end
end

p contacts

