# frozen_string_literal: true

require('rails_helper')

RSpec.describe('cards/show', type: :view) do
  before do
    @card = assign(
      :card,
      Card.create!(
        name: 'Name',
        owner: 'Owner'
      )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Owner/))
  end
end
