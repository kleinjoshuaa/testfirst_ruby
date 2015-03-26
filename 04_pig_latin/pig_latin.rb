def translate(s)
    $word_array = s.split(' ')
    $return_string = ''

    for i in 0..$word_array.length-1 do
        word = $word_array[i]
        if starts_with_vowel(word) then
             return_word= word+'ay'
        elsif starts_with_dipthong(word)[0] then
            return_word = word[starts_with_dipthong(word)[1]+1..word.length]+word[0..starts_with_dipthong(word)[1]]+'ay'
        else
            return_word = word[1..word.length]+word[0]+'ay'
        end

        if word.gsub(/\W/,'') != word then
               return_word.gsub!(/\W/,'')
               return_word += word[word.length-1]
        end

        if word[0].upcase!.nil? then
            return_word.capitalize!
        end

        $return_string += return_word
        if i < $word_array.length-1
            $return_string += ' '
        end

    end
            return $return_string
end

def starts_with_vowel(word)
    vowels = ['a','e','i','o','u']
    return vowels.include?(word[0])
end

def starts_with_dipthong(word)
    two_dipthongs = /[b-df-hj-np-tv-z]{2}|qu/i
    three_dipthongs = /[b-df-hj-np-tv-z]{3}|[b-df-hj-np-tv-z]qu/i
    if [word[0..2]].grep(three_dipthongs) != []
        return true,2
    elsif [word[0..1]].grep(two_dipthongs) != []
        return true,1
    else
        return false,0
    end
end
