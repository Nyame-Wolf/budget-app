require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')
    sign_in @user
  end
  it 'creates a category' do
    visit '/categories'
    click_link 'New category'
    fill_in 'category_name', with: 'Games'
    click_button 'Create Category'
    expect(page).to have_content 'Games'
  end
end
