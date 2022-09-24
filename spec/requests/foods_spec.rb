require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  before(:each) do
    @user = User.create(name: 'xyz', email: 'xyz@gmail.com', password: 'xyz@2022')
    @food = Food.create(name: 'Onion', measurement_unit: 'KG', price: 200, user_id: @user.id)
  end

  describe 'GET #index' do
    it 'returns a 200 status code' do
      get foods_path
      expect(response).to have_http_status(200)
    end
    it 'render post template' do
      get foods_path
      expect(response).to render_template('index')
    end

    it 'the response body includes correct placeholder' do
      get foods_path
      expect(response.body).to include('Food List')
    end
  end

  describe 'GET #new' do
    it 'returns a 200 status code' do
      get new_food_path(id: @food.id)
      expect(response).to have_http_status(200)
    end

    it 'render show template' do
      get new_food_path(id: @food.id)
      expect(subject).to render_template('new')
    end
    it 'the response body includes correct placeholder' do
      get new_food_path(id: @food.id)
      expect(response.body).to include('New food')
    end
  end
end
