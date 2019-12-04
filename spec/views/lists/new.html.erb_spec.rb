# frozen_string_literal: true

require('rails_helper')

RSpec.describe('lists/new', type: :view) do
  before do
    assign(
      :list,
      List.new(
        name: 'MyString'
      )
    )
  end

  it 'renders new list form' do
    render

    assert_select 'form[action=?][method=?]', lists_path, 'post' do
      assert_select 'input[name=?]', 'list[name]'
    end
  end
end
