require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @user = User.create(name: 'tamara', email: 'tamara@gmail.com')
    @user.save
  end

  subject do
    described_class.new(name: 'Onion', preparation_time: 1, cooking_time: 1, description: 'description', user: @user)
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid when preparation time is less than 0' do
    subject.preparation_time = -1
    expect(subject).to_not be_valid
  end

  it 'is not valid without cooking_time' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end
end
