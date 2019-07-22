require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @r_name = params[:name]
    "#{@r_name.reverse}"
  end

  get '/square/:number' do
    @s_number = params[:number].to_i
    "#{@s_number * @s_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    string = " "

    until @number == 0
      string += "#{@phrase}"
      @number -= 1
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    else @operation == "divide"
      "#{@num1 / @num2}"
    end
  end

end
