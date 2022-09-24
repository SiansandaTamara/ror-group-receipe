require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  before(:each) do
    @user = User.create(name: 'xyz', email: 'xyz@gmail.com', password: 'xyz@2022')
    @recipe = Recipe.create(name: 'Onion', preparation_time: 1, cooking_time: 1, description: 'description',
                            public: false, user_id: @user.id)
    login_as(@user)
  end

  describe 'GET #index' do
    it 'returns a 200 status code' do
      get recipes_path
      expect(response).to have_http_status(200)
    end
    it 'render post template' do
      get recipes_path
      expect(response).to render_template('index')
    end

    it 'the response body includes correct placeholder' do
      get recipes_path
      expect(response.body).to include('Recipes List')
    end
  end

  describe 'GET #new' do
    it 'returns a 200 status code' do
      get new_recipe_path(id: @recipe.id)
      expect(response).to have_http_status(200)
    end

    it 'render show template' do
      get new_recipe_path(id: @recipe.id)
      expect(subject).to render_template('new')
    end
    it 'the response body includes correct placeholder' do
      get new_recipe_path(id: @recipe.id)
      expect(response.body).to include('New Recipe')
    end
  end
end
