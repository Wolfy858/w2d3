def my_transpose(array)
  result = []
  array.each do |row|
    result << []
  end

  array.each do |row|
    row.each_with_index do |el, idx|
      result[idx] << el unless result[idx].nil?
    end
  end
  result
end





  #   new_row = []
  #   row.each do |el|
  #     new_row << el
  #   end
  #   result << new_row
  # end
  # result
