# frozen_string_literal: true

require('rails_helper')

RSpec.describe('boards/index', type: :view) do
  before do
    assign(
      :boards,
      [
        Board.create!(
          name: 'Name',
          team: 'Team'
        ),
        Board.create!(
          name: 'Name',
          team: 'Team'
        )
      ]
    )
  end

  it 'renders a list of boards' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Team'.to_s, count: 2
  end
end
