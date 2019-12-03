class Post < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhoods
  has_one_attached :image
end
