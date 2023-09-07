
require_relative '/Users/michaela.fouki/Projects/MakersCode/rubi_challenges/lib/search_candies.rb'
require 'rspec'

# Write tests for this function in a file search_candies_spec.rb. 
# There should be at least 4 tests to reflect the different examples above.
# Implement the function search_candies and make sure your tests pass.
# Add one test to verify that the search prefix works when given in lowercase too:
    
RSpec.describe "search_candies method" do
    it "takes the search string 'Ma' and maximum price 10, 
    and it returns a list/array with all the candies' names which start with 'Ma' 
    and cost no more than 10" do
    expect(search_candies('Ma', 10)).to eq([ 'Mars', 'Maltesers' ])
    end
    it "takes the search string 'Ma' and maximum price 2, 
    and it returns a list/array with all the candies' names which start with 'Ma' 
    and cost no more than 2" do
    expect(search_candies('Ma', 2)).to eq(['Mars'])
    end
    it "takes the search string 'S' and maximum price 10, 
    and it returns a list/array with all the candies' names which start with 'S' 
    and cost no more than 10" do
    expect(search_candies('S', 10)).to eq(['Skitties', 'Skittles', 'Starburst'])
    end
    it "takes the search string 's' and maximum price 4, 
    and it returns a list/array with all the candies' names which start with 's' 
    and cost no more than 4" do
    expect(search_candies('s', 4)).to eq(['Skitties', 'Skittles'])
    end
end

    # > search_candies('S', 4)
    # [ 'Skitties', 'Skittles' ] # Starbust excluded: it's more than 4

