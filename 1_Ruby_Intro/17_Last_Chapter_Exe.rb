#Ex1
arr= ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

arr.each do |x|
  if x =~ /lab/
    puts x
  end
end

#Ex4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }