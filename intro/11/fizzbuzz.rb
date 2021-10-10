# frozen_string_literal: true

n = 100
(1..n).each do |i|
  if (i % 15).zero?
    puts 'FizzBuzz!'
  elsif (i % 3).zero?
    puts 'Fizz!'
  elsif (i % 5).zero?
    puts 'Buzz!'
  else
    puts i.to_s
  end
end
