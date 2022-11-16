require 'rails_helper'

RSpec.describe Occurrence, type: :model do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')
    @category = Category.create!(name: 'Game', icon: '🎲', user: @user)
  end

  let(:valid_attributes) do
    {
      name: 'Football',
      amount: 300,
      user: @user,
      categories: [@category]
    }
  end

  subject { Occurrence.new valid_attributes }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an icon' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'check if amount is a number ' do
    expect(subject.amount).to be_a_kind_of(Numeric)
  end
end
