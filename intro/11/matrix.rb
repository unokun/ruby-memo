# frozen_string_literal: true

# 1 - 9 のユーザー入力値numberを受け取る
min = 1
max = 9
print "出したい九九の段数を入力してください。(#{min}-#{max})"
n = gets.chomp.to_i
#puts n

unless n.between?(1, 9) 
  puts "#{min}から#{max}の値を入力してください。"
  exit
end

# number回繰り返し
n.times do |i|
 
  # 1行分を出力
  # 行の上の枠線を出力
  # number回繰り返し
  n.times do

    # 行の左のパーツ * を出力
    print '*'
 
    # --------- を出力
    print '---------'
 
  # 九九の段を出力

  # number回繰り返し
  end
  puts '*'

  n.times do |j|
 
    # 行の左の枠線 | を出力
    print '|'
 
    # i * j = xx を出力
    print "#{i + 1} * #{j + 1} = #{(i + 1) * (j + 1)}"
 
  end
  # 行の右の枠線 | を出力
  # 改行
  puts '|'
 
# 最終行の枠線を出力
# number回繰り返し
end
 
    # 行の左のパーツ * を出力
 
    # --------- を出力