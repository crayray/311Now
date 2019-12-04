class Post < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  has_one_attached :image

 
end
