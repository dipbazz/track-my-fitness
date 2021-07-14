require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it { should have_many(:measurements) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:unit) }
  it { should validate_presence_of(:target) }
end
