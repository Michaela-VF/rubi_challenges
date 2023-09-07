# To complete this question, 
# you will make use of some concepts you've learned previously:
    # The select and map methods.
    # How to access an object property.
    # You'll also need to find out how to verify whether a string is the prefix for another string.
    # Use the to eq() RSpec matcher.
    # You'll test-drive a function search_candies that takes the following two arguments: 
    # a search string and a maximum price — 
    # and returns only the names of candies matching these criteria:
        # # the candy name starts by the search string
        # # the candy price is less than the maximum price

def search_candies(search_string, max_price)
    # this encapsulation of the candies hash would better be done with a class e.g #CadyShop 
    # which would initialise candies @candies = [...] and have a function #search_candies 
    # for security,readability, and ...
    candies = [
        { name: 'Aero', price: 1.99 },
        { name: 'Skitties', price: 2.99 },
        { name: 'Mars', price: 1.49 },
        { name: 'Maltesers', price: 3.49 },
        { name: 'Skittles', price: 1.49 },
        { name: 'Starburst', price: 5.99 },
        { name: 'Ricola', price: 1.99 },
        { name: 'Polkagris', price: 5.99 },
        { name: 'Pastila', price: 4.99 },
        { name: 'Mentos', price: 8.99 },
        { name: 'Raffaello', price: 7.99 },
        { name: 'Gummi bears', price: 10.99 },
        { name: 'Fraise Tagada', price: 5.99 }
      ]
    selected_candies = candies.select{|candy| candy[:name].start_with?(search_string.capitalize) && candy[:price] < max_price} 
    selected_candies_names = selected_candies.map{|candy| candy[:name]}
    return selected_candies_names
end

p search_candies('ma', 10)