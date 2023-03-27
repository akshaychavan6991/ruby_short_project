class Calculator
    def calculate
        while true
            puts "Would you like to add => A, subtract = > S , multiply = M,  division = D or Exit => E"
            response = gets.chomp
            response.upcase!
           
        
            case response
            when "A" then addition_function
            when "S" then subtraction_function
            when "M" then multiplication_function
            when "D" then division_function
            when "E" then break

            else
                puts " plz provide the valid options? "
            end
        end    
    end
   

    private 
    def addition_function
        puts "Which numbers would you like to add?"
        puts "enter the first number"
        n1 = gets.chomp.to_f
        puts "enter the second number"
        n2 = gets.chomp.to_f
        answer =  n1 + n2 
        puts "The sum is... #{answer}"
    end
    
    def subtraction_function
        puts "Which numbers would you like to subtract?"
        puts "enter the first number"
        n1 = gets.chomp.to_f
        puts "enter the second number"
        n2 = gets.chomp.to_f
        answer =  n1 - n2 
        puts "The answer is... #{answer}"
    end
    
    def multiplication_function
        puts "Which numbers would you like to multiply?"
        puts "enter the first number"
        n1 = gets.chomp.to_f
        puts "enter the second number"
        n2 = gets.chomp.to_f
        answer =  n1 * n2 
        puts "The answer is... #{answer}"
    end
    def division_function
        puts "Which numbers would you like to Divide?"
        puts "enter the first number"
        n1 = gets.chomp.to_f
        puts "enter the second number"
        n2 = gets.chomp.to_f
        answer =  n1 / n2 
        puts "The answer is... #{answer}"
    end
end