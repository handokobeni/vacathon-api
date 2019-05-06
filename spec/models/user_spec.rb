require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:trip).dependent(:destroy) }
  it { should have_many(:like).dependent(:destroy) }
  it { should have_many(:comment).dependent(:destroy) }
  it { should have_many(:open_trip).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:avatar) }

end
