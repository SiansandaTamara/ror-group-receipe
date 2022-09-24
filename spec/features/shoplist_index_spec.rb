require 'rails_helper'

RSpec.describe Recipe, type: :feature do
  before :each do
    @user = User.create(name: 'xyz', email: 'xyz@gmail.com', password: 'xyz@2022')
    @recipe = Recipe.create(name: 'Onion', preparation_time: 1, cooking_time: 1, description: 'description',
                            public: false, user_id: @user.id)
    login_as(@user)
    visit general_shopping_list_path(recipe_id: @recipe.id)
  end

  context 'General shopping list page' do
    it 'I can see the quanity' do
      expect(page).to have_content('Quantity')
    end

    it 'I can see the Total Items' do
      expect(page.html).to include('Total Items')
    end

    it 'I can see a page title' do
      expect(page).to have_content('Shopping List')
    end
  end
end
