=begin
Implement a caesar cipher that takes in a string and the shift factor and
then outputs the modified string.
Ex: caesar_cipher("What!", 5) should output Bmfy!
=end

def caesar_cipher(input, shift)
  #A to Z is 65 to 90 in ascii
  #a to z is 97 to 122
  input.scan(/./) do |letter| #check the input charcter by character

    if letter =~ /[^A-Za-z]/ #if the character is not in the alphabet print
      print letter
    elsif letter =~ /[A-Z]/ #if they are capital letters
      if (letter.ord + shift) > 90 #check if it needs to wrap around
        print (letter.ord.+(shift-26).chr )
      else #just print it if no wrap is needed
        print (letter.ord.+shift).chr
      end
    else #then they are lowercase letters
      if (letter.ord + shift) > 122 #check if it needs to wrap around
        print (letter.ord.+(shift-26).chr )
      else #just print it if no wrap is needed
        print (letter.ord.+shift).chr
      end
    end
  end
  puts "" #empty space for next line

end
caesar_cipher('Genius',5)
caesar_cipher("What?!", 5)
caesar_cipher("Xenos$$",5)