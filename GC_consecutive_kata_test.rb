require_relative "GC_consecutive_kata.rb"
require "minitest/autorun"

class GC_consecutive_kata_test < Minitest::Test

	def test_does_array_have_more_than_one_element
		results = array_test
		assert(results.length >= 2)
	end
end