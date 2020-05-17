require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

get "/" do
    @dice=[]
    number_of_dice=9
    number_of_dice.times do
        @dice << rand(1..6)
    end
    view "dice"
end

get "/tacos" do 
    "<h1>Tacos</h1>"
end