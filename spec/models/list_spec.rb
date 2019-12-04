# frozen_string_literal: true

require('rails_helper')

RSpec.describe(List, type: :model) do
  it { is_expected.to(validate_presence_of(:name)) }
  it { is_expected.to(belong_to(:board)) }
  it { is_expected.to(have_many(:cards).dependent(:destroy)) }
end
