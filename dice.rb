require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

get "/" do
    @die1=rand(1..6)
    @die2=rand(1..6)
    view "dice"
end

get "/tacos" do 
    "<h1>Tacos</h1>"
end