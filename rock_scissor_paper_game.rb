require_relative "rock_scissor_paper.rb"
class Shoot
    include Rock_Scossor_Paper

    @@user_point = 0
    @@comp_point = 0
    def initialize(name)
        @name = name
        puts "#{@name}! welcome to the game "
    end


    def start_game
        count = 0
        puts "press 1 to read instructions ."
        puts "press 2 to start the game "
        user = gets.chomp.to_i
        if user == 1 
            Rock_Scossor_Paper.instruction
        elsif user == 2
            while count < 10
                puts "enter your choice"
                user = gets.chomp.to_i
                comp = Random.rand(1..3)
                if user ==  1 and comp == 1
                    puts "its a draw"
                elsif user == 1 and comp == 2
                    puts "#{@name} win"
                    @@user_point += 1
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"
                
                elsif user == 1 and comp == 3
                    puts "computer win!"
                    @@comp_point += 1
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"

                elsif user == 2 and comp == 2
                    puts "its a draw"
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"

                elsif user == 2 and comp == 1
                    puts "computer win!"
                    @@comp_point += 1
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"

                elsif user == 2 and comp == 3
                    puts "#{@name} win"
                    @@user_point += 1
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"
                    
                elsif user == 3 and comp == 1
                    puts "#{@name} win"
                    @@user_point += 1
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"
                    

                elsif user == 3 and comp == 2
                    puts "computer win!"
                    @@comp_point += 1
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"

                elsif user == 3 and comp == 3
                    puts "its a draw"
                    puts "your point is #{@@user_point} and computer points is #{@@comp_point}"

                else
                    puts "select  the valid option"

                end
                count += 1
            end

            if @@user_point > @@comp_point
                puts "#{@name} is the winner"
            elsif @@user_point == @@comp_point
                puts " its a draw ... both are at equal points"
            else
                puts " you loose the game .... computer win"
            end
            
        else
            p "please select the valid option ."
        end
    end
    
end

obj = Shoot.new("akshay")
obj.start_game
