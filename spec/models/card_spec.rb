# frozen_string_literal: true

require('rails_helper')

RSpec.describe(Card, type: :model) do
  it { is_expected.to(validate_presence_of(:name)) }
  it { is_expected.to(validate_presence_of(:owner)) }
  it { is_expected.to(validate_presence_of(:deadline)) }
  it { is_expected.to(belong_to(:list)) }
end
