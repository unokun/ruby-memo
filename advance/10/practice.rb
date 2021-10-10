# frozen_string_literal: true

require 'date'

def number?(str)
  (str =~ /\A[0-9]+\z/) != nil
end

def input(val_name, min, max)
  loop do
    puts "#{val_name}を入力してください(#{min}-#{max}のいずれかの整数で入力)"
    v = gets.chomp.to_s
    next unless number?(v)

    retv = v.to_i
    next unless retv.between?(min, max)

    return retv
  end
end

year = input('生まれ年', 1900, 2100)
month = input('生まれ月', 1, 12)
day = input('生まれ日', 1, 31)

unless Date.valid_date?(year, month, day)
  puts "存在しない日付です。#{year}-#{month}-#{day}"
  exit
end
birthday = Date.new(year, month, day)
today = Date.today
age = today.year - birthday.year
age += 1 if today >= birthday
puts "あなたの年齢は#{age}才です。"
