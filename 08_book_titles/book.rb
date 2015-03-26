class Book
    attr_accessor :title


    def title=(input)
        input = proper_case(input)
        input[0] = input[0].upcase
        @title = input
    end

    def proper_case(string)
        do_not_capitalize = ['or','and','a','an','in','the','of']
        return string.split(' ').map {|s|
            if !do_not_capitalize.include?(s)
                s[0] = s[0].upcase
            end
            s}.join(' ')
        end
end

