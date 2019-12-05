class Post < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  has_many :comments
  has_one_attached :image

  validates :title, presence: true
  validates :description, length: {minimum: 30}
  validates :intersection, presence: true
  validates :neighborhood_id, presence: true
end
