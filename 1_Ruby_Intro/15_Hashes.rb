family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

#Ex1
immediate_family = family.select do |x, y|
  k = :sisters && k = :brothers
end

arr = immediate_family.values.flatten

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

#Ex3
p hash_mergers = family.merge(person)
p family

family.merge!(person)
p family

#Ex4
p person[:name]

#Ex5
p person.value?('painting')