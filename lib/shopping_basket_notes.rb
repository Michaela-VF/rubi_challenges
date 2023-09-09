
require_relative 'rubi_challenges/lib/candy_notes.rb'

class ShoppingBasket
    def initialize
        @items = []   
       end
    
    def add_item(candy)
        # this item can be instances from the Candy class 
        @items << candy
    end

    def get_total_price
        @items.map{|items| items.price}.sum
    end       
end

candy = Candy.new('Mars', 4.99)
basket = ShoppingBasket.new
p basket.get_total_price
# # => 0
basket.add_item(candy)

p basket.get_total_price
    # => 4.99

basket.add_item(Candy.new('Skittle', 3.99))
basket.add_item(Candy.new('Skittle', 3.99))

p basket.get_total_price
    # => 12.97