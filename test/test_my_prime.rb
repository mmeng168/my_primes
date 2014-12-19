require_relative './test_helper'
require_relative '../lib/my_primes'

class TestMyPrime < Minitest::Test
    context 'is_prime' do
        should 'return true with number 5' do
            assert_equal true, MyPrimes::MyPrime.is_prime?(5)
        end

        should 'return false with number 4' do
            assert_equal false, MyPrimes::MyPrime.is_prime?(4)
        end
    end
end
