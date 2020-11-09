require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number ** 2}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    number = params[:number].to_i
    #binding.pry
   
    string = ''
    

    number.times do
      string << phrase
      #binding.pry
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = ""

    if params[:operation] == "add"
      answer = number1 + number2
    elsif params[:operation] == "subtract"
      answer = number1 - number2
    elsif params[:operation] == "multiply"
      answer = number1 * number2
    elsif params[:operation] == "divide"
      answer = number1 / number2
    end
    answer.to_s

  end
end