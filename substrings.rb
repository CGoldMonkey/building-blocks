=begin
Implement a method #substrings that takes a word as the first argument
and then an array of valid substrings (your dictionary) as the second
argument. It should return a hash listing each substring (case insensitive) 
that was found in the original string and how many times it was found.
Ex:substrings("below", dictionary) gives  {"below"=>1, "low"=>1}
=end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  frequencies = Hash.new(0) #has to hold the substring found and the frequency

  text.downcase! #sets all of the text to lower case letters
  dictionary.each do |word| #for each dictionary word
  	scanned = text.scan(word) #scan the text to see if it is there
  	number = text.scan(word).count #scan the text and count the number of occurences
  	if number > 0 #if you find a substring
  	  frequencies[word] = number #set the number of times it was found
  	end
  end
  puts frequencies
end

substrings("below", dictionary) # should give => {"below"=>1, "low"=>1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
# should give => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

substrings("going", dictionary) #=> go 1, going 1 i 1