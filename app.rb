require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    "#{params[:phrase]} "* @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @operation = params[:number1].to_i + params[:number2].to_i
    
    when "subtract"
      @operation =params[:number1].to_i - params[:number2].to_i
      
    when "multiply"
      @operation =params[:number1].to_i * params[:number2].to_i
    else
      @operation =params[:number1].to_i / params[:number2].to_i

    end
    "#{@operation.to_s}"
  end

end