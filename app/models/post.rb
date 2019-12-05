class Post < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  has_many :comments
  has_one_attached :image

 
end
