require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @array = []
    @number.times {@array << @phrase}
    @final_string = @array.join(", ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @array = []
    @array << params[:word1]
    @array << params[:word2]
    @array << params[:word3]
    @array << params[:word4]
    @array << params[:word5]
    @final = @array.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      @sum = @number1 + @number2
      @sum.to_s
    elsif
      @operation == "subtract"
      @difference = @number1 - @number2
      @difference.to_s
    elsif
      @operation == "multiply"
      @product = @number1 * @number2
      @product.to_s
    else
      @remainder = @number1 / @number2
      @remainder.to_s
    end
  end


    

end