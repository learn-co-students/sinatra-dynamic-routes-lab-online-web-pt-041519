require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @user_name = params[:name]
    @reversed = @user_name.reverse
    "#{@reversed}"
  end 

  get '/square/:number' do 
    @num = params[:number]
    @sqd = (@num.to_i)** 2
    "#{@sqd}"
  end 

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @say = params[:phrase]
    @string = []
    @num.times do 
      @string << @say
    end 
    "#{@string}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @one, @two, @three, @four, @five = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end 

  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @op
    when "add"
      @sum = (@num1)+(@num2)
      "#{@sum}"
    when "subtract"
      @sum = (@num1)-(@num2)
      "#{@sum}"
    when "multiply"
      @sum = (@num1)*(@num2)
      "#{@sum}"
    when "divide"
      @sum = (@num1)/(@num2)
      "#{@sum}"
    end 
  end 
end