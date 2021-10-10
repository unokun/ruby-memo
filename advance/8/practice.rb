# frozen_string_literal: true

print '最小値： '
min = gets.chomp.to_i
print '最大値： '
max = gets.chomp.to_i

if min > max
  puts "不正な範囲です。min: #{min}, max: #{max}"
  exit
end
sum = 0
(min..max).each do |n|
  sum += n
end
puts "#{min}から#{max}までの合計値は#{sum}"