require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
   @revname = params[:name].reverse
    "#{@revname}"
  end

  get '/square/:number' do
    @sqr = params[:number].to_i ** 2
    "#{@sqr.to_s}"
  end

  get '/say/:number/:phrase' do 
    return "#{params[:phrase]}" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    return "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add"
      @total = params[:number1].to_i + params[:number2].to_i
      "#{@total}"
    elsif 
      params[:operation] == "subtract"
      @total = params[:number1].to_i - params[:number2].to_i
      "#{@total}"
    elsif
      params[:operation] == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
      "#{@total}"
    elsif
      params[:operation] == "divide"
      @total = params[:number1].to_i / params[:number2].to_i
      "#{@total}"
    end

  end

end