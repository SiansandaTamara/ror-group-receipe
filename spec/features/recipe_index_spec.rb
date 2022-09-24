require 'rails_helper'

RSpec.describe Recipe, type: :feature do
  before :each do
    @user = User.create(name: 'xyz', email: 'xyz@gmail.com', password: 'xyz@2022')
    @recipe = Recipe.create(name: 'Onion', preparation_time: 1, cooking_time: 1, description: 'description',
                            public: false, user_id: @user.id)
    login_as(@user)
    visit recipes_path
  end

  context 'Recipe index page' do
    it 'I can see the name of recipe' do
      expect(page).to have_content('Onion')
    end

    it 'I can see the description' do
      expect(page.html).to include('description')
    end

    it 'I can see a page title' do
      expect(page).to have_content('Recipes List')
    end

    it 'When I click on delete button, it redirects to recipes list' do
      click_button 'DELETE'
      expect(page).to have_content('Recipes List')
    end

    it 'When I click on Recipe details button, it redirects to recipes details page' do
      click_button 'Recipe details'
      expect(page).to have_content('Preparation time')
    end
  end
end
