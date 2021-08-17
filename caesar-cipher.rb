def caesar_cipher(string, key)

end

def numberize(array)
    array.map do |x|
        x = x.ord
    end
end

def characterize(array)
    array.map do |x|
        x = x.ord
    end
end

def cipher_shift(array, offset)
    # binding.pry
    array.map! do |x|
        if !(x.between?(97, 122) || x.between?(65,90))
            x = x
        elsif x.between?(97, 122)
            if (x + offset).between?(97, 122)
                x += offset
            else
                x += offset - 26
            end
        elsif x.between?(65, 90)
            if (x + offset).between?(65, 90)
                x += offset
            else
                x += offset - 26
            end
        end
    end
end