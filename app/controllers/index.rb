# get '/' do
#   @aunty = params[:aunty]
#   puts @aunty
#   # Look in app/views/index.erb
#   erb :index
# end

post '/aunty' do
  speech = params[:user_input]
    if speech == "I love ya, aunty, but I've got to go."
      speech = "Bye Sandra, come back with some donuts and diapers next time."
      break
    elsif speech == speech.upcase
      speech = "NO, WE CAN'T DO THAT! I AINT SHAVING MY BACK FOR NO ONE!"
    else
      speech = "HUH?! SPEAK UP, SANDRA!"
    end

  redirect to("/?aunty=#{speech}")
end


get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_cool_url
end