# frozen_string_literal: true

require('rails_helper')

RSpec.describe('boards/new', type: :view) do
  before do
    assign(
      :board,
      Board.new(
        name: 'MyString',
        team: 'MyString'
      )
    )
  end

  it 'renders new board form' do
    render

    assert_select 'form[action=?][method=?]', boards_path, 'post' do
      assert_select 'input[name=?]', 'board[name]'

      assert_select 'input[name=?]', 'board[team]'
    end
  end
end
