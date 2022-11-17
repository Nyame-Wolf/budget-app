require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')

    sign_in @user

    @ability = Ability.new(@user)
    assign(:current_ability, @ability)
    controller.stub(:current_user, @user)
    view.stub(:current_user, @user)

    assign(:categories, [
             Category.create!(
               name: 'Name0',
               icon: 'Icon',
               user: @user
             ),
             Category.create!(
               name: 'Name1',
               icon: 'Icon',
               user: @user
             )
           ])
  end

  # it 'renders a list of categories' do
  #   render
  #   cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  #   assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
  #   assert_select cell_selector, text: Regexp.new('Icon'.to_s), count: 2
  # end
end
