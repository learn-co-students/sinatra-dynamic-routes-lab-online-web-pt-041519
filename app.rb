require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name] 
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @blah = params[:phrase]
    @num.times do 
      str += "#{@blah}\n"
    end
    str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i 
    @n2 = params[:number2].to_i 
    
    if @op == 'add'
      a = @n1+@n2
    elsif @op == 'subtract'
      a = @n1-@n2 
    elsif @op == 'multiply'
      a = @n1*@n2 
    elsif @op == 'divide'
      a = @n1/@n2 
    end
    a.to_s
  end

end