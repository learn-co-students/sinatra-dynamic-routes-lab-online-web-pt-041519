require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num**2).to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    case op
      when "add"
      res = num1 + num2
      when "subtract"
      res = num1 - num2
      when "divide"
      res = num1/num2
      when "multiply"
      res = num1*num2
    end
    res.to_s
  end
end