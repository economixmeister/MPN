class MultiplePrecisionNumber
	def initialize( str )
		@number = check( str )
	end
	
	def strval
		str = ''
		@number.each { |num|
			str << num.to_s
		}
		return str
	end
	
	private
	def check( str )
		p str
		#if /[0-9]+/ =~ str		# ¥d+|¥d*¥.¥d+|¥d+¥.¥d*
		#	p "match"
			number = []
			str.chars { |ch|
				if ch == "."
					number << ch
					next
				end
				number << ch.to_i
			}
			return number
		#else
		#	p "not match"
		#	raise ArgumentError, "invalid argument, the argument of method new( string ) needs a string."
		#end
	end

end
