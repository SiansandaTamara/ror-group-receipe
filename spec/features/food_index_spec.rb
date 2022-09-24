require 'rails_helper'

RSpec.describe Food, type: :feature do
  before :each do
    @user = User.create(name: 'xyz', email: 'xyz@gmail.com', password: 'xyz@2022')
    @food = Food.create(name: 'Onion', measurement_unit: 'KG', price: 200, user_id: @user.id)
    visit foods_path
  end

  context 'Food index page' do
    it 'I can see the name of food' do
      expect(page).to have_content('Onion')
    end

    it 'I can see the measurement unit' do
      expect(page.html).to include('KG')
    end

    it 'I can see a page title' do
      expect(page).to have_content('Food List')
    end

    it 'When I click on a add food, it redirects new food form' do
      click_button 'Add Food'
      expect(page).to have_content('New food')
    end
  end
end
