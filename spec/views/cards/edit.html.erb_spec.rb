# frozen_string_literal: true

require('rails_helper')

RSpec.describe('cards/edit', type: :view) do
  before do
    @card = assign(
      :card,
      Card.create!(
        name: 'MyString',
        owner: 'MyString'
      )
    )
  end

  it 'renders the edit card form' do
    render

    assert_select 'form[action=?][method=?]', card_path(@card), 'post' do
      assert_select 'input[name=?]', 'card[name]'

      assert_select 'input[name=?]', 'card[owner]'
    end
  end
end
