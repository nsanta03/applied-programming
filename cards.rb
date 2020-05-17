require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end


get "/" do
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]
    suits = ["clubs", "diamonds", "hearts", "spades"]
    deck=[]

    for rank in ranks 
        for suit in suits
            deck << "#{rank}_of_#{suit}"
        end
    end   
   shuffled_deck=deck.shuffle
   @hand=shuffled_deck[0,5]
   view 'cards'
end