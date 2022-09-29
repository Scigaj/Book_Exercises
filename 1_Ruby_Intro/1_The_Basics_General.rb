#Ex 1
"Michal " + "Scigaj"
"Michal" + " " + "Scigaj"

#Ex 2
thousands = 2940 / 1000
hundreds = 2940 % 1000 / 100
tens = 2940 % 1000 % 100 / 10
ones = 2940 % 1000 % 100 % 10

#Ex 3
movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

movies.each { |x, y| puts y }

#Ex 4
movies.values.each { |x| puts x }

#Ex 5

no = 8
x = 1
res = 1

while x < no
  res = res * (x + 1)
  x += 1
end

puts res

#Ex 6
def square(m, n, o)
  p m * 2
  p n * 2
  p o * 2
end

#Ex 7 - Answer: Wrong Syntax

