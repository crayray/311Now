class User < ApplicationRecord
    has_many :posts
    has_many :likes
    has_many :comments
    # macro to utilize Bcrypt methods.
    has_secure_password

    validates :name, presence: true
    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true
end
