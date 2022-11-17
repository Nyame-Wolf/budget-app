require 'rails_helper'

RSpec.describe 'occurrences/show', type: :view do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')

    sign_in @user
    @category = Category.create!(name: 'Game', icon: '🎲', user: @user)
    assign(:occurrence, Occurrence.create!(
                          name: 'Name',
                          amount: 2,
                          user: @user,
                          categories: [@category]
                        ))
  end

  # it 'renders attributes in <p>' do
  #   render
  #   expect(rendered).to match(/Name/)
  #   expect(rendered).to match(/2/)
  # end
end
