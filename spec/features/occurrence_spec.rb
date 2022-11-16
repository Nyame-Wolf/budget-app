require 'rails_helper'

RSpec.feature "Occurrences", type: :feature do
    before(:each) do
    @user = User.new(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                     password_confirmation: 'password')
    @user.skip_confirmation!
    @user.save
    sign_in @user
    @category = Category.create!(name: 'Game', icon: '🎲', user: @user)
  end
  it 'creates opens form for occurrence' do
    visit "categories/#{@category.id}/occurrences"
    click_link 'New occurrence'
    expect(page).to have_content 'New occurrence'
  end
  it 'creates a new occurence' do
    visit "categories/#{@category.id}/occurrences"
    click_link 'New occurrence'
    fill_in 'occurrence_name', with: 'Football'
    fill_in 'occurrence_amount', with: 30
    click_button 'Create Occurrence'
    expect(page).to have_content 'Occurrence was successfully created.'
  end
   it 'It goes back to home' do
    visit "categories/#{@category.id}/occurrences"
    click_link 'New occurrence'
    fill_in 'occurrence_name', with: 'Football'
    fill_in 'occurrence_amount', with: 30
    click_link 'Back to categories'
    expect(page).to have_content 'Game'
  end
end
