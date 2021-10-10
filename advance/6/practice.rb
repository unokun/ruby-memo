# frozen_string_literal: true

users = [
  {
    'id' => 1,
    'family_name' => 'yamada',
    'first_name' => 'taro',
    'address' => '東京都港区',
    'phone' => '09000000000',
    'age' => 35
  },
  {
    'id' => 2,
    'family_name' => 'sato',
    'first_name' => 'hanako',
    'address' => '東京都中央区',
    'phone' => '09000000001',
    'age' => 28
  },
  {
    'id' => 3,
    'family_name' => 'saitou',
    'first_name' => 'jiro',
    'address' => '東京都豊島区',
    'phone' => '09000000002',
    'age' => 41
  },
  {
    'id' => 4,
    'family_name' => 'sakamoto',
    'first_name' => 'karen',
    'address' => '東京都世田谷区',
    'phone' => '09000000003',
    'age' => 52
  }
]

# Q1
users.each do |user|
  puts "#{user['first_name']} #{user['family_name']} : #{user['address']}"
end

puts ''

# Q2
keys = %w[id family_name first_name address phone age]
header = ''
keys.each do |key|
  header += ',' unless header.empty?
  header += key
end
puts header

users.each do |user|
  content = ''
  user.each do |k, _v|
    content += ',' unless content.empty?
    content += user[k].to_s
  end
  puts content
end

puts ''

# Q3
over40 = []
users.each do |user|
  over40.append(user) if user['age'] > 40
end
p over40
