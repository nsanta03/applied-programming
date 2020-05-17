require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]
suits = ["clubs", "diamonds", "hearts", "spades"]

deck=[]
for rank in ranks 
    for suit in suits
        deck << "#{rank}_of_#{suit}"
    end
end    

get "/" do
  @hand=[]
  number_of_cards=5
  number_of_cards.times do
    @hand<<puts deck.shuffle 
  end  
  view 'cards'
end