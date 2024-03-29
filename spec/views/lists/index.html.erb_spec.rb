# frozen_string_literal: true

require('rails_helper')

RSpec.describe('lists/index', type: :view) do
  before do
    assign(
      :lists,
      [
        List.create!(
          name: 'Name'
        ),
        List.create!(
          name: 'Name'
        )
      ]
    )
  end

  it 'renders a list of lists' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
