# frozen_string_literal: true

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require('factory_bot')

FactoryBot.create_list(:board, 35, :with_lists)
