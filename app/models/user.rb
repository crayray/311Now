class User < ApplicationRecord
    has_many :posts
    has_many :likes
    has_many :comments
    # macro to utilize Bcrypt methods.
    has_secure_password
end
