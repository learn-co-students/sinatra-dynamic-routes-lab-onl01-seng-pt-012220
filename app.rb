require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    new_phrase = ""

    num.times do 
      new_phrase += phrase 
    end
    new_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.to_a
    params.values.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num2 - @num1}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    else @op == "divide"
      "#{@num1 / @num2}"
    end
  end

end