require_relative "GC_consecutive_kata.rb"
require "minitest/autorun"

class GC_consecutive_kata_test < Minitest::Test

		def test_does_array_have_more_than_one_element
			results = array_test
			assert(results.length >= 2)
		end
		
		def test_does_array_contain_duplicate_elements
			results = array_test
			assert(results.detect{ |e| results.count(e) > 1 }) # evaluates each element, checks for duplicates, returns true at first element that has a duplicate
		end
			
end