# frozen_string_literal: true

require('rails_helper')

RSpec.describe('cards/new', type: :view) do
  before do
    assign(
      :card,
      Card.new(
        name: 'MyString',
        owner: 'MyString'
      )
    )
  end

  it 'renders new card form' do
    render

    assert_select 'form[action=?][method=?]', cards_path, 'post' do
      assert_select 'input[name=?]', 'card[name]'

      assert_select 'input[name=?]', 'card[owner]'
    end
  end
end
