require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')
  end

  let(:valid_attributes) do
    {
      name: 'Game',
      icon: '🎲',
      user: @user
    }
  end

  subject { Category.new valid_attributes }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an icon' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'icon should return a string' do
    expect(subject.icon).to be_a_kind_of(String)
  end
end
