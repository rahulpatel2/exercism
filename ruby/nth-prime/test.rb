require 'prime'
number = 10
up_to = number * (Math.log(number) + 2)
    primes = (2..up_to).to_a
	 puts primes
    primes.each { |num| primes.delete_if { |i| i > num && (i % num) == 0 } }
    puts primes[number - 1]

