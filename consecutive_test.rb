require_relative "consecutive.rb"
require "minitest/autorun"

class Consecutive_test < Minitest::Test

	def test_empty_arrays_return_zero
		results = find_max_consecutive_identical_elements([])
		assert_equal(0, results )
	end

	def test_array_with_one_element
		results =
		find_max_consecutive_identical_elements([1])
		assert_equal(1,results)
	end

	def test_array_for_2_non_identical_elements
		results =
		find_max_consecutive_identical_elements([1,2])
		assert_equal(1, results)    

	end

	def test_array_for_2_identical_elements
		results = 
		find_max_consecutive_identical_elements([1,1])
		assert_equal(2, results)
	end

	def test_array_for_2_identical_elements_and_1_non_identical_element
		results = 
		find_max_consecutive_identical_elements([1,1,2])
		assert_equal(2, results)
	end

	def test_array_for_2_different_identical_elements_and_1_non_identical_element
		results = 
		find_max_consecutive_identical_elements([1,2,2])
		assert_equal(2, results)
	end

	def test_for_3_identical_elements_in_are_array
		results =
		find_max_consecutive_identical_elements([1,1,1])
		assert_equal(3, results)
	end

	def test_to_itterate_through_array_and_find_identical_elements
		results = 
		find_max_consecutive_identical_elements(Array.new(100,1))
		assert_equal(100, results)
	end
	
	def test_for_max_identical_elements
		results =
		find_max_consecutive_identical_elements( [1,2,2,2,3,3,1])
		assert_equal(3,results)
	end
	
	def test_a_different_array
		results =
		find_max_consecutive_identical_elements( [1,2,3,3])
		assert_equal(2, results)
	end
	
	def test_for_string_value
		results =
		find_max_consecutive_identical_elements( "hello")
		assert_equal(2, results)
	end
	
	def test_a_different_string
		results =
		find_max_consecutive_identical_elements( "this was sooooooo hard")
		assert_equal(7, results)
	end
	
	
	
	
	

end