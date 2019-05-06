class User < ApplicationRecord
    has_secure_password

    has_many :trip, dependent: :destroy
    has_many :like, dependent: :destroy
    has_many :comment, dependent: :destroy
    has_many :open_trip, dependent: :destroy

    validates_presence_of :name, :email, :username, :password_digest, :role, :avatar
end
