# frozen_string_literal: true

require('rails_helper')

RSpec.describe('cards/index', type: :view) do
  before do
    assign(
      :cards,
      [
        Card.create!(
          name: 'Name',
          owner: 'Owner'
        ),
        Card.create!(
          name: 'Name',
          owner: 'Owner'
        )
      ]
    )
  end

  it 'renders a list of cards' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Owner'.to_s, count: 2
  end
end
