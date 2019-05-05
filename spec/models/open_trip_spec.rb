require 'rails_helper'

RSpec.describe OpenTrip, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:trip) }

  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:trip_id) }
end
