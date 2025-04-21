require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Dice roll</h1>
  <p>Define some routes in app.rb</p>
  "
  #<form action="/process_roll">
  #<label for="dice_id">Number of dice to roll?</label>
  #<input id="dice_id" name="dice">
  #<label for="side_id">How many sides per die?</label>
  #<input id="side_id" name="side">
  #<button>Roll!</button>
  #</form>
end

get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i
  
  erb(:results)
end
