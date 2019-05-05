class Category < ApplicationRecord
    has_many :trip, dependent: :destroy

    validates_presence_of :name
end
