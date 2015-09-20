def find_max_consecutive_identical_elements(any_array) 
  consecutive_elements = []
  count_of_consecutive_elements = []
  if any_array.include? ("")
  any_array = any_array.split(//)
  else
  any_array = any_array
  end
  any_array.each do | value |
	if consecutive_elements.length == 0 
	   consecutive_elements << value

	elsif value == consecutive_elements[-1] 
		  consecutive_elements << value
	else 
		count_of_consecutive_elements << consecutive_elements.count
	    consecutive_elements = []
		consecutive_elements << value
	end
	
 end
  count_of_consecutive_elements << consecutive_elements.count
  count_of_consecutive_elements.max 
 
end


# def find_max_consecutive_identical_elements(any_array)
#  if any_array.length == 0
#     0
#  elsif any_array[0] == any_array[1] && any_array[1] == any_array[2]
#        3
#  elsif any_array[0] == any_array[1]
#        2 
#  elsif any_array[-2] == any_array[-1]
#        2
#  else
#       1   
#  end
# end

