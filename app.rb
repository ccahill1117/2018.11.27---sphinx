require 'sinatra'
require 'sinatra/reloader'
require './lib/Riddle'


get ('/') do
  @riddle_to_user = Riddle.new()
  # @user_answer = params["user_answer"]
  erb(:input)
end
