# frozen_string_literal: true

min = 1
max = 10_000
puts "#{min}から#{max}の任意の数字を入力してください。(終了はCtrl + c): "
n = gets.chomp.to_i
puts n

# check
if n < min || n > max
  puts "#{min}から#{max}の任意の数字を入力してください。"
  exit
end

sum = 0

(1..n).each do |i|
  sum += i
end

#i = 1
#number.times do
#   sum += i
#   i += 1
# end

# puts 'sum: ' + sum
puts "sum: #{sum}"
