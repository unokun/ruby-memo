# frozen_string_literal: true

sym = :abcde
 
# 先頭を大文字にして cap 変数に代入
cap = sym.capitalize
 
# pメソッドで cap を出力
p cap
 
# すべて大文字にして up 変数に代入
up = sym.upcase
 
# pメソッドで up を出力
p up

# 文字列にして str 変数に代入
str = sym.to_s

# pメソッドで str を出力
p str

# sym, cap , up, str のそれぞれの変数についてシンボル文字列とオブジェクトidを出力
p sym
puts sym.object_id
p cap
puts cap.object_id
p up
puts up.object_id
p str
puts str.object_id
