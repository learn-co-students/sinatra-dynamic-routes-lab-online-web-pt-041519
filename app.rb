require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end
  get "/square/:number" do
   @num = params[:number].to_i
   "#{@num * @num}"
  end
  get "/say/:number/:phrase" do
    @say = params[:phrase]
    @num = params[:number].to_i
    @say_string = " "
    @num.times do
       @say_string = @say_string + @say
    end
    @say_string
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
      case @operation
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num2 - @num1}"
      when "multiply"
        "#{@num1 * @num2}"
      when "divide"
        "#{@num1/@num2}"
      end
  end

end
