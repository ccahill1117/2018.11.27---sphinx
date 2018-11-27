require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require './lib/Riddle'


get ('/') do
  @riddle_to_user = Riddle.new()
  @@riddle_index = @riddle_to_user.index
  @@attempts = 0
  erb(:input)
end

post ('/output') do
  @user_answer = params["user_answer"]
  @riddle_to_user = Riddle.new()
  if @user_answer == @riddle_to_user.answers[@@riddle_index]
    @result = "You got it right!"
    erb(:output)
  else
    # binding.pry
    @@attempts = @@attempts + 1
    if @@attempts > 3
      @result = "game over!" + " The answer was: " + @riddle_to_user.answers[@@riddle_index]
      return erb(:output)
    end
    @result = "Nope, wrong, you suck!"
    @hint = "but nevertheless, here's a hint.... " + @riddle_to_user.clues[@@riddle_index]
    erb(:input)
  end
end
