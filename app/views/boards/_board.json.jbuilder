# frozen_string_literal: true

json.extract!(board, :id, :name, :team, :created_at, :updated_at)
json.url(board_url(board, format: :json))
