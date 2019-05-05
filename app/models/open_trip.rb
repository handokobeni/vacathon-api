class OpenTrip < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  validates_presence_of :price, :user_id, :trip_id
end
