require 'rails_helper'

RSpec.describe 'occurrences/index', type: :view do
  before(:each) do
    assign(:occurrences, [
             Occurrence.create!(
               name: 'Name',
               amount: 2
             ),
             Occurrence.create!(
               name: 'Name',
               amount: 2
             )
           ])
  end

  it 'renders a list of occurrences' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
