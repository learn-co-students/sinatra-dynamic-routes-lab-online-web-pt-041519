require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    r = @name.reverse
    "#{r}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num * @num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phr = params[:phrase].to_s
    times = @phr * @num
    "#{times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @opr = params[:operation].to_s
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @opr == "add"
      add = @num1 + @num2
      "#{add}"
    elsif @opr == "subtract"
      sub = @num1 - @num2
      "#{sub}"
    elsif @opr == "multiply"
      mult = @num1 * @num2
      "#{mult}"
    elsif @opr == "divide"
      div = @num1 / @num2
      "#{div}"
    end
  end

# get "/:operation/:number1/:number2" do
# @number1 = params[:number1]
# @number2 = params[:number2]
# @operation = params[:operation]

#  @number1.send(@operation,@number2)
# end

end