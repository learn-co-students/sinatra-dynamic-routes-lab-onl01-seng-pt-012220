require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user = params[:name]
    "#{@user.reverse}"
  end
  
  get '/square/:number' do 
   @square_num= params[:number].to_i*params[:number].to_i
    "#{@square_num}"
  end 
  
  get '/say/:number/:phrase' do 
    @str=""
    @num = params[:number].to_i
    @phr = params[:phrase]
    @num.times do
      @str += @phr
      @str +="\n"
    end 
      "#{@str}"
   end 
   
   get '/say/:word1/:word2/:word3/:word4/:word5' do 
     
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  
   end 
 
   get '/:operation/:number1/:number2' do 
      @num_1=params[:number1].to_i
      @num_2=params[:number2].to_i
      if params[:operation]=="add"
       "#{@num_1 + @num_2}"
     elsif params[:operation]=="subtract"
       "#{ @num_2 - @num_1}"
      elsif params[:operation]=="multiply"
       "#{@num_1* @num_2}"
     else params[:operation]=="divide"
       "#{ @num_1/@num_2}"
     end 
   end 
end