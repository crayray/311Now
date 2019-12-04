class Post < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  belongs_to :neighborhoods
=======
  belongs_to :neighborhood
>>>>>>> collection-select-on-posts-form
  has_one_attached :image

 
end
