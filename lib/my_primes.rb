require_relative "./my_primes/version"

module MyPrimes
    class MyPrime
	def self.is_prime?(num)
	    return false if num < 2
	    start=2
	    while start < num
		if ( (num % start) == 0)
		    return false
		end
		start += 1
	    end
	    true
	end

	def self.get_primes(start, total)
	    primes_array = []
	    while primes_array.size < total 
		if is_prime?(start)
		    primes_array << start
		end
		start += 1
	    end
	    primes_array
	end
    end

    class PrimeMetrix
	@format="%6d";
	def self.print_metrix(arr)
	    col_arr = arr
	    col_arr.each_with_index do |c, row_index|
		arr.each_with_index do |r, col_index|
		    if (row_index == 0) 
			printf("#{@format}",r) 
		    else
			if (col_index == 0)
			    printf("#{@format}",c) 
			else
			    printf("#{@format}",c*r) 
			end
		    end
		end
		print "\n"
	    end
	end
    end
end

