#Ex 1

person = { name: "bob", height: "6 ft", weight: "160 lbs", hair: "brown" }

person[:foot] = "9"

my_hash = { type: "cat", to_del: "kill_me_softly" }

person.merge!(my_hash)

p person

person.delete(:to_del)

p person

person.each { |x, y| puts "Pepper's #{x} is #{y}" }

#Ex 2

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", { age: 62, city: "New York City" })
