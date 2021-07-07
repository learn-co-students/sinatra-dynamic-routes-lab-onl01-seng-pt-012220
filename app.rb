require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  #reverse_name
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    @reversename
  end

  #square
  get '/square/:number' do
    @square = params[:number].to_i ** 2 
    @square.to_s 
  end
  
  #return single string with two local_variables
  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @number.times {string += "#{@phrase}\n" }
    string 
  end
   
   #many word string
   get '/say/:word1/:word2/:word3/:word4/:word5' do
     @one = params[:word1]
     @two = params[:word2]
     @three = params[:word3]
     @four = params[:word4]
     @five = params[:word5]
     "#{@one} #{@two} #{@three} #{@four} #{@five}."
   end
   
   #do the math 
   get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @oper
      when "subtract"
        (@num1 - @num2).to_s
      when "add"
        (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end
   
end