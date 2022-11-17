require 'rails_helper'

RSpec.describe 'occurrences/edit', type: :view do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')
    sign_in @user
    @category = Category.create!(name: 'Game', icon: '🎲', user: @user)
  end
  let(:occurrence) do
    Occurrence.create!(
      name: 'MyString',
      amount: 1,
      user: @user,
      categories: [@category]
    )
  end

  before(:each) do
    assign(:occurrence, occurrence)
  end

  it 'renders the edit occurrence form' do
    render

    assert_select 'form[action=?][method=?]', category_occurrence_path(@category, occurrence), 'post' do
      assert_select 'input[name=?]', 'occurrence[name]'

      assert_select 'input[name=?]', 'occurrence[amount]'
    end
  end
end
