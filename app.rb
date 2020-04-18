require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    "#{@number * @number}"
  end
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    
    phrase_array = []
    until @number == 0 
      @number -= 1
      phrase_array << @phrase
    end
    phrase_array.join(" ")
    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    
    word_array = []
    word_array << params[:word1]
    word_array << params[:word2]
    word_array << params[:word3]
    word_array << params[:word4]
    word_array << params[:word5]
    
    word_array = word_array.join(" ")
    word_array = word_array << "."
    word_array
  end
  
  get  '/:operation/:number1/:number2' do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    @operation = params[:operation]
    
    case @operation 
      when "add"
        result = @num_1 + @num_2 
      when "subtract"
        result = @num_1 - @num_2 
      when "multiply"
        result = @num_1 * @num_2 
      when "divide"
        result = @num_1 / @num_2 
      end
      "#{result.to_s}"
    end
      
end