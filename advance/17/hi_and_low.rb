# frozen_string_literal: true

require 'date'

MAX_PLAY = 10

def predict_hi_or_low
  loop do
    puts '次の数字はハイ or ロー? (0:低い 1:高い)。'
    v = gets.chomp.to_s
    next unless %w[0 1].include?(v)

    return v
  end
end

score = 0
remain_count = MAX_PLAY
continuity_count = 0

loop do
  break if remain_count.zero?

  puts "現在のスコア: #{score}"
  puts "残りプレイ回数: #{remain_count}"

  # 現在の数値
  cur_val = rand(1...9)
  puts "現在の数値: #{cur_val}"

  predict = predict_hi_or_low
  puts "あなたの予測: #{predict == '0' ? 'ロー' : 'ハイ'}"

  next_val = rand(1...9)
  result = next_val - cur_val

  if result.positive?
    puts "ハイ! 現在の数字: #{cur_val}, 次の数字: #{next_val}"
    remain_count -= 1
    if predict == '1'
      continuity_count += 1
      score += 100 + (continuity_count - 1) * 100
      puts "当たり! 現在のスコア: #{score}"
    else
      score = 0
      continuity_count = 0
      puts "負け! 現在のスコア: #{score}"
    end

  elsif result.negative?
    puts "ロー! 現在の数字: #{cur_val}, 次の数字: #{next_val}"
    remain_count -= 1
    if predict == '0'
      continuity_count += 1
      score += 100 + (continuity_count - 1) * 100
      puts "当たり! 現在のスコア: #{score}"

    else
      score = 0
      continuity_count = 0
      puts "負け! 現在のスコア: #{score}"
    end
  else
    puts "ドロー! 現在の数字: #{cur_val}, 次の数字: #{next_val}"
  end
end

# ログ
puts "スコア: #{score}"
