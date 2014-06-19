# every non-prime number is the product of 2 primes that came before,
# this can be tested by finding that when divided by one prime
# the remainder is zero. 

$array_of_primes = []


def prime_check(number)
  #must be able to have a -1 index
  $array_of_primes << number if ($array_of_primes.length < 2)
  @length = $array_of_primes.length

  #iterate through primes array
  $array_of_primes.each_with_index do |prime, index|
    #number is divisible by prime  
    break if number%prime == 0
    $array_of_primes.push(number) if (@length - index == 1) 
  end  
end

number= 2

while ($array_of_primes.length < 1000) 
  prime_check(number)
  number+=1
end    


puts $array_of_primes.inject(0){ |result, element| result + element }








