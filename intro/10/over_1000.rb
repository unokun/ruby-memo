# frozen_string_literal: true

n = 1
sum = 0
loop do
  sum += n
  break if sum > 1000

  n += 1
end

puts "合計： #{sum}"
puts "最後の値： #{n}"
