def add (m,n)
    return m+n
    end

def subtract (m,n)
    return m-n
    end

def sum (array)
    $result = 0
    array.map{|num| $result +=num}
    return $result
end

def multiply (array)
    $result = 1
    array.map{|num| $result *=num}
    return $result
end

def power (m,n)
    return m**n
end

def factorial(m)
    $result = 1
    $q = m
    while ($q-1) > 0 do
        $result *= $q
        $q -= 1
    end
    return $result
end
