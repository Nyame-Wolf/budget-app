require 'rails_helper'

RSpec.describe 'categories/edit', type: :view do
  before(:each) do
    @user = User.new(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                     password_confirmation: 'password')
    @user.skip_confirmation!
    @user.save
    sign_in @user
  end

  let(:category) do
    Category.create!(
      name: 'MyString',
      icon: 'MyString',
      user: @user
    )
  end

  before(:each) do
    assign(:category, category)
  end

  it 'renders the edit category form' do
    render

    assert_select 'form[action=?][method=?]', category_path(category), 'post' do
      assert_select 'input[name=?]', 'category[name]'

      assert_select 'select[name=?]', 'category[icon]'
    end
  end
end
