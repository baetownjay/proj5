class User < ApplicationRecord
    validates :username, :password_digest, presence: true
    validates :username, uniqueness: :true
    has_secure_password
    has_many :folders
    has_many :thoughts, through: :folders
    has_one_attached :avatar


end
