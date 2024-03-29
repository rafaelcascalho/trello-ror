# frozen_string_literal: true

require('rails_helper')

RSpec.describe('boards/show', type: :view) do
  before do
    @board = assign(
      :board,
      Board.create!(
        name: 'Name',
        team: 'Team'
      )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Team/))
  end
end
