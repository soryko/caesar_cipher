
x = "whats going on"

def cipher(text, key)
    abc = 'abcdefghijklmnopqrstuvwxyz'
    result = ""
    text.downcase.chars.each do |letter|
        if abc.include?(letter)
            index = abc.index(letter)
            shift = (index + key) % 26
            result += abc[shift]
        else
            result += letter
        end
    end
    result
end

puts cipher(x, 20)