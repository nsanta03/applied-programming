require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

get "/" do
  "<h1>""tacos""</h1>"
end