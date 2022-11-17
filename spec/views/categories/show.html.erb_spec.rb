require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')
    sign_in @user
    assign(:category, Category.create!(
                        name: 'Name',
                        icon: 'Icon',
                        user: @user
                      ))
  end

  it 'renders attributes in <p>' do
    render

    expect(rendered).to match(/What are you trying?/)
  end
end
