# frozen_string_literal: true

require('rails_helper')

RSpec.describe('lists/show', type: :view) do
  before do
    @list = assign(
      :list,
      List.create!(
        name: 'Name'
      )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Name/))
  end
end
