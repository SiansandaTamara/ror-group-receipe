require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'tamara', email: 'tamara@gmail.com')
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
