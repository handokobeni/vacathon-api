require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many(:trip).dependent(:destroy) }

  it { should validate_presence_of(:name) }
end
