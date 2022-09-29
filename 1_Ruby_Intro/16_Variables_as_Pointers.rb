def letter(b)
  b.each do |letter| 
    puts "I like letter #{letter}"
  end
end

a = ["a", "b", "c", "h", "d"]
letter(a)

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)
