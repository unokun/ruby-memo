# frozen_string_literal: true

def get_product(i, j)
  "#{i}*#{j}=#{i*j}"
end

# text = get_product(2, 3)
# puts text

def get_product_row(col, row_s, row_e)
  retv = ''
  (row_s .. row_e).each do |row|
    retv += get_product(col, row) + ' '
  end
  retv
end

# product_row = get_product_row(7, 1, 5)
# puts product_row

def print_product_matrix(col_s, col_e, row_s, row_e)
  (col_s .. col_e).each do |col|
    text = get_product_row(col, row_s, row_e)
    puts text
  end
end

#print_product_matrix(6, 7, 1, 5)
print_product_matrix(1, 9, 1, 9)
