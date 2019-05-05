class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  validates_presence_of :body, :user_id, :trip_id
end
