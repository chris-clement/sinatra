require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "You found the secret route!"
end

get '/makers' do
  "This is now updated"
end

get '/coffee' do
  "It's time for coffee"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do 
  erb(:form)
end

get '/time' do
  code = "<%= Time.now %>"
  erb code
end
