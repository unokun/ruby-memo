# frozen_string_literal: true

lorem = <<~"EOS"
  Lorem ipsum dolor sit amet, consectetur adipiscing elit,
  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
  nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate velit
  esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint occaecat cupidatat non proident,
  sunt in culpa qui officia deserunt mollit anim id est laborum.
EOS

puts lorem.upcase

lorem.split(/\n/).each do |line|
  if line.length > 50
    puts line
    puts "文字数は#{line.length}です。"
  end
end

max_f = 0
max_c = ''
'abcdefghijklmnopqrstuvwxyz'.each_char do |a|
  f = 0
  lorem.each_char do |c|
    f += 1 if a == c
  end
  if f > max_f
    max_f = f
    max_c = a
  end
end

puts "最も出現頻度の高いアルファベットは#{max_c}で#{max_f}回です。"
