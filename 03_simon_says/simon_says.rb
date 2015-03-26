def echo(s)
    return s
end

def shout(s)
    return s.upcase
end

def repeat(s,num=2)
    $i = 0
    $string=''
    while $i< num do
        $string +=s
        if $i<num-1 then
            $string +=' '
        end
        $i+=1
    end
    return $string
end

def start_of_word(s,index)
    return s[0..index-1]
end

def first_word(s)
    return s.split(' ')[0]
end

def titleize(s)
    $string_array=s.split(' ')
    for i in 0..$string_array.length-1 do
        if i == 0 || !['over','the','a','and'].include?($string_array[i]) then
            $string_array[i].capitalize!
        end
    end

    return $string_array.join(' ')
end

