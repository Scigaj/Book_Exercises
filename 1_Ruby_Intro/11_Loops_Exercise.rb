toggle = 0

while toggle != "STOP"
  puts "what is your name?"
  name = gets.chomp
  puts "Given name: #{name}"
  puts "Write 'STOP' to exit."
  toggle = gets.chomp
end

def countdown(m)
  puts m
  if m > 0
    countdown(m - 1)
  end
end

countdown(55)