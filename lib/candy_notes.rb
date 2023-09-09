# # You will now test-drive and implement the two classes Candy and ShoppingBasket 
# # so the following code works:
class Candy
    
    attr_reader :name, :price
    
    def initialize(name, price)
        @name = name
        @price = price
    end

    def get_name
        return @name
    end

    def get_price
        return @price
    end

end

candy = Candy.new('Mars', 4.99)
p candy
p candy.get_name
 # => 'Mars'
p candy.get_price
 # => 4.99