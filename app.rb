require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    @reversed = @name.reverse
    "#{@reversed}"
  end
  
  get '/square/:number' do 
    @num = params[:number]
    @sqr = @num.to_i * @num.to_i 
    @sqr.to_s
  end  

  get '/say/:number/:phrase' do 
    @num = params[:number]
    @phrase = params[:phrase]
    @str = []
    @num.to_i.times do 
      @str<<@phrase
    end  
    @str.join(" ")  
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "multiply"
      @result = @num1 * @num2 
    elsif @operation == "divide"
      @result = @num1/ @num2 
    elsif @operation == "add"
      @result = @num1+ @num2 
    elsif @operation == "subtract"
      @result =  @num1- @num2
    end   
    @result.to_s
  end 

end