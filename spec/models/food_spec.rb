require 'rails_helper'

RSpec.describe Food, type: :model do
  before(:each) do
    @user = User.create(name: 'tamara', email: 'tamara@gmail.com')
    @user.save
  end

  subject do
    described_class.new(name: 'Onion', measurement_unit: 'KG', price: 200, user: @user)
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without measurement_unit' do
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end
