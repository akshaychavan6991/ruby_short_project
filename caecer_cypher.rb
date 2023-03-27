
#this is the assignment from odin project

def ciesar(message , shift)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    message = message.downcase
    result = 0
    output = ""
    message.each_char do |char|
        if alpha.include?(char)
         
          result = alpha.index(char) + shift
          output << alpha[result] 
        end  
    end
    return output
end 

puts ciesar("rahul" , 2)