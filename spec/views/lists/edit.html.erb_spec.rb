# frozen_string_literal: true

require('rails_helper')

RSpec.describe('lists/edit', type: :view) do
  before do
    @list = assign(
      :list,
      List.create!(
        name: 'MyString'
      )
    )
  end

  it 'renders the edit list form' do
    render

    assert_select 'form[action=?][method=?]', list_path(@list), 'post' do
      assert_select 'input[name=?]', 'list[name]'
    end
  end
end
