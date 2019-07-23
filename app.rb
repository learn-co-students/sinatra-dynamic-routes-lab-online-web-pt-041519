require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @reversed_name = params[:name].reverse
      "#{@reversed_name}"
  end

  get "/square/:number" do
    @squared_number = (params[:number].to_i ** 2).to_s
      "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    # needs to set a local variable of a number -> call it n
    # needs to take a phrase and create a return string comprised of the phrase n times
    @output = params[:phrase] * params[:number].to_i
      "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @output = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
      "#{@output}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @output = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      @output = (params[:number1].to_i / params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      @output = (params[:number1].to_i * params[:number2].to_i).to_s
    else
      @output = (params[:number1].to_i - params[:number2].to_i).to_s
    end
    "#{@output}"
  end
end