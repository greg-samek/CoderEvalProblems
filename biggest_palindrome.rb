$array_of_primes = []
$prime = []

def prime_setter(number)
  #must be able to have a -1 index
  $array_of_primes << number if ($array_of_primes.length < 2)
  @length = $array_of_primes.length

  #iterate through primes array
  $array_of_primes.each_with_index do |prime, index|
    #number is divisible by prime  
    break if number%prime == 0
    $array_of_primes.push(number) if (@length - index == 1) 
    $prime = number if (@length - index == 1) && number == number.to_s.reverse.to_i
  end  
end


(2..1000).each {|number| prime_setter(number)}


puts $prime
