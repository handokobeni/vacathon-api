require 'rails_helper'

RSpec.describe Trip, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:like).dependent(:destroy) }
  it { should have_many(:comment).dependent(:destroy) }
  it { should have_many(:open_trip).dependent(:destroy) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:photo) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:category_id) }
end
