require 'rails_helper'

RSpec.describe 'occurrences/edit', type: :view do
  let(:occurrence) do
    Occurrence.create!(
      name: 'MyString',
      amount: 1
    )
  end

  before(:each) do
    assign(:occurrence, occurrence)
  end

  it 'renders the edit occurrence form' do
    render

    assert_select 'form[action=?][method=?]', occurrence_path(occurrence), 'post' do
      assert_select 'input[name=?]', 'occurrence[name]'

      assert_select 'input[name=?]', 'occurrence[amount]'
    end
  end
end
