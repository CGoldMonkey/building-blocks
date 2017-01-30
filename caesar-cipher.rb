=begin
Implement a caesar cipher that takes in a string and the shift factor and
then outputs the modified string.
Ex: caesar_cipher("What!", 5) should output Bmfy!
=end
puts "before method"
def caesar_cipher(input, shift)
  #makre sure the string is an alphabet ascii
  #A to Z is 65 to 90
  #a to z is 97 to 122
  input.scan(/./) do |letter|

    if letter =~ /[^A-Za-z]/
      print letter
    else
      print (letter.ord.+shift).chr

    end

    #check for A to Z
    #check of a to z, wrap if neccessary
    #just print if anything else


  end
  puts ""

end
puts "after method"
caesar_cipher("What?!", 5)