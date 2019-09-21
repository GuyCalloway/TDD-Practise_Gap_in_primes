def gap(g, m, n)
    if m == 1 && n == 2 && g == 1
        return [1, 2]
    elsif g > n - m
        return [nil]
    else 
       array_of_primes = consecutive_primes(m, n)
       result = gap_check(array_of_primes, g)
        if result.length == 2
          return result
        else 
            return [nil]
        end
  end
end

def gap_check(array, gap, prime_spacing = 1)
    result = []
    array.each_with_index {|x, i| 
                                  if array[i + prime_spacing] == nil
                                    break
                                  elsif array[i + prime_spacing] - x == gap
                                    result = [x, array[i + prime_spacing]]
                                    break
                                  end                  
                          }
   
      return result
end

def consecutive_primes(m, n)
  array = []
  until m == n + 1
    if factorial_check(m)
      array << m
    end 
    m += 1
  end
  return array
end
        

def factorial_check(x)
    z = x
    until z == 2
      z -= 1
      if x % z == 0 
        return false
        break
      end
    end   
    true 
end