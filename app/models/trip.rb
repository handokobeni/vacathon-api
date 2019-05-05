class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :like, dependent: :destroy
  has_many :comment, dependent: :destroy
  has_many :open_trip, dependent: :destroy

  validates_presence_of :title, :address, :description, :photo, :user_id, :category_id
end
