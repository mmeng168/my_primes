require_relative './lib/my_primes'

def usage
    <<-EOS
    Usage: ruby print_table.rb <start_number> <total_number>
           <start_number>: the starting number, must be an integer.
           <total_number>: total numbers to be outputed, must be an integer.
    EOS
end

def check
    if ARGV[0] == "-h" || ARGV[0] == "-help"
       puts usage
       exit
    end
    if ARGV.size != 2
       puts "    Has to be two command line arguments, please try again!"
       puts usage
       exit
    else
	if !ARGV[0].is_an_integer? 
	    puts "    The first argument must be an integer, please try again!" 
	    puts usage
	    exit
	end 
	if !ARGV[1].is_an_integer?
	    puts "    The second argument must be an integer, please try again!" 
	    puts usage
	    exit
	end
    end
end

class String
    def is_an_integer?
        self.to_i.to_s == self
    end
end

check
arr = MyPrimes::MyPrime.get_primes(ARGV[0].to_i, ARGV[1].to_i)
MyPrimes::PrimeMetrix.print_metrix(arr)

