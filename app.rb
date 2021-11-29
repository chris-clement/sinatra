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

get '/cat' do
  erb(:index)
end

get '/time' do
  code = "<%= Time.now %>"
  erb code
end
