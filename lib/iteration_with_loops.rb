require 'pry'
# looked at solution
def find_min_in_nested_arrays(array_of_daily_tempertures)
  outer_results = []
  row_index = 0
  while row_index < array_of_daily_tempertures.count do
    element_index = 0
    min_element = []
    lowest_temp = 100
    while element_index < array_of_daily_tempertures[row_index].count do
      
      # Array at row_index
      # Element of the inner array at element_index
      # If the length of the current element is greater than the length of longest_string_element
      # Set longest_string_element to the current element
      if array_of_daily_tempertures[row_index][element_index] < lowest_temp
        lowest_temp = array_of_daily_tempertures[row_index][element_index]
      end
      element_index += 1
    end
    
    # We have to check every element in each inner array, so after the loop finishes
    # The current value of longest_string_element is pushed into outer_results
    outer_results << lowest_temp
    row_index += 1
  end
  
  outer_results 
  
  
  
end

#binding.pry




  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
