require 'test/unit'
require '../lib/MultiplePrecisionNumber'

class TestMPN< Test::Unit::TestCase
	def _initial_empty
		a_mpn = MultiplePrecisionNumber.new('')
		assert_raise(ArgumentError)
	end
	
	def test_initial_integer
		a_mpn = MultiplePrecisionNumber.new('123')
		assert_true(a_mpn.strval == '123')
	end
	
end
