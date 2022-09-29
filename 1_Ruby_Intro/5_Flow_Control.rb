#Ex 2

def uppercase_w(word)
  if word.length > 10
    word.upcase
  end
end

#Ex 3

u_no = 20
case
  when u_no < 0
    p "Error!"
  when u_no >= 0 && u_no <= 50
    p "between 0 and 50"
  when u_no > 50 && u_no <= 100
    p "between 51 and 100"
  else
    p "above 100"
end

#Ex 5
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
