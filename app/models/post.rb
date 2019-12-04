class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  def neighborhood
    neighborhood_id= self.neighborhood_id
    # neighborhood  = Neighborhood.where(neighborhood_id)
  end
end
