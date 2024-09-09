require 'rails_helper'

RSpec.describe 'Food Index', type: :feature do
  describe ' USER STORY #' do
    describe ' as a user when I visit root_path' do
      it 'displays' do
        visit root_path
        # And I fill in the search form with "sweet potatoes"
        fill_in :q, with: "sweet potatoes"
        # And I click "Search"
        click_on "Search"
        # Then I should be on page "/foods"
        expect(current_path).to eq(foods_path)
        # Then I should see a total of the number of items returned by the search.
        # (sweet potatoes should find more than 30,000 results)
        within '.total' do
          expect(page).to have_content("Total Items found: 453555")
        end
        # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
        within(first('.food')) do
          expect(page).to have_css('.gtinupc')
          expect(page).to have_css('.description')
          expect(page).to have_css('.ingredients')
          expect(page).to have_css('.brand_owner')
        end
      end
    end 
  end
end



# within '.foods' do
#   within '#food-123' do
#     expect(page).to have_content("GTIN/UPC code: ")
#     expect(page).to have_content("Description: ")
#     expect(page).to have_content("Brand Owner: ")
#     expect(page).to have_content("Ingredients: ")
#   end
  
# end

# <section class="search-results">
#   <table>
#     <% @top_ten_foods.each do |food| %>
#       <div id="food-<%= food.fdcid %>">
#         <tr>
#           <td>Description: <%= food.description %></td>
#           <td>Ingredients: <%= food.ingredients %></td>
#           <td>Upc: <%= food.gtinupc %></td>
#           <td>Brand Owner: <%= food.brand_owner %></td>
#         </tr>
#       </div>
#     <% end %>
#   </table>
# </section>