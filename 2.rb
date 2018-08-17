list1 = %w(a b c)
list2 = [1,2,3]

def zip_together(first, second)
  result = []
  first.each_with_index do |first_element, index|
    result << first_element
    result << second[index]
  end
  result
end



puts zip_together(list1, list2)