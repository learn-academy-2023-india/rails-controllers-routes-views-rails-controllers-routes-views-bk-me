class PageController < ApplicationController
    def landing 
    end
    def menu 
    end
    def hours
    end
    def location
    end
    def cubed 
        @number = params[:number].to_i * params[:number].to_i * params[:number].to_i

    end
    def evenly
        @number1 = params[:number1]
        @number2 = params[:number2]
        if (params[:number1].to_i % params[:number2].to_i).even?
            @outcome = 'number 1 is evenly divisible by number 2'
        else
            @outcome = 'number 1 is not evenly divisible by number 2'
        end 
    end
    def palindrome
        @string = params[:string]
        if (params[:string] == params[:string].reverse)
        @outcome = 'it is palindrome'
        else 
            @outcome = 'is not palindrome'
        end
    end
    def random
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
        
        if @number1 <= @number2
            @outcome = rand(@number1..@number2)
        else
            @outcome = 'Invalid input. Please ensure number1 is less than or equal to number2.'
        end
    end
        
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]

        @story = "One day, a #{@adjective} #{@noun} decided to #{@verb} through the park. Everyone around couldn't believe their eyes as the #{@noun} #{@verb}ed in the most #{@adjective} way imaginable."
    end
end


