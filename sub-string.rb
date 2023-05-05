def substrings(string, dictionary)

    #Downcasing all the words in our respective string and dictionary will ensure that
    #if there's a match it will be identifiable
    dictionary = dictionary.map{|word| word.downcase}
    
    #in order to remove any 
    new_string = string.downcase.split(' ').join

    substring_hash = {}

    #exclusive range meaning we loop from index 0 to the length of our string minus 1
    for current_index in 0...new_string.length

        #we set the first index of our range to the current index in order to guarantee that we are only looking at that particular section of our string 
        for last_index in current_index...new_string.length
                
            #last index is inclusive
            word = new_string[current_index..last_index]
            
            if dictionary.include?(word) == true 

                #if our hash contains the word add 1 to its key if the hash does not contain the word add the word to the hash
                substring_hash.key?(word) ? substring_hash[word] += 1 : substring_hash[word] = 1
                
            end
        end  
    end

    puts substring_hash

end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dict)