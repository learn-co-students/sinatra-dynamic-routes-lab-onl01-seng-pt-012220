require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
      "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @arr = []
    params[:number].to_i.times {@arr << params[:phrase]}
    "#{@arr.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @solution = nil

    if @op == "add"
      @solution = @n1 + @n2
    elsif @op == "subtract"
      @solution = @n1 - @n2
    elsif @op == "multiply"
      @solution = @n1 * @n2
    elsif @op == "divide"
      @solution = @n1 / @n2
    end

    "#{@solution}"

  end
end