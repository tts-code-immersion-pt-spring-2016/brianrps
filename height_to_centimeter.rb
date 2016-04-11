puts"Hello! What is your name? "
name = gets.chomp

puts"Hello! What is your height? "
height = gets.chomp

puts"Hello! What is your weight? "
weight = gets.chomp

puts "Hello #{name}! Your weight is #{weight} pounds and your height is #{height} inches tall!"

metric_height = height.to_f * 2.54
metric_weight = weight.to_f * 0.453592

puts "Your height in cm is #{metric_height} and your weight in kg is #{metric_weight}"

puts metric_weight
puts metric_height  