require_relative 'config/environment'

class App < Sinatra::Base

  # Reverse input name
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "Hi, #{@reverse}."
  end

  # Square input number
  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "The square is #{@square.to_s}."
  end

  # Return input phrase input number of times
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    erb :phrase
  end

  # Return all inputs in 1 string
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # Perform input operation on input numbers
  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    case @operation
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num1 - @num2}"
      when "divide"
        "#{@num1 / @num2}"
      when "multiply"
        "#{@num1 * @num2 }"
      else 
        "Sorry, I don't know that operation"
    end
  end  

end