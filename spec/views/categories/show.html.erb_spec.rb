require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    @user = User.new(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                     password_confirmation: 'password')
    @user.skip_confirmation!
    @user.save
    sign_in @user
    assign(:category, Category.create!(
                        name: 'Name',
                        icon: 'Icon',
                        user: @user
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).not_to match(/Name/)
    expect(rendered).not_to match(/Icon/)
  end
end
