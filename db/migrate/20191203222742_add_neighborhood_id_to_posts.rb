class AddNeighborhoodIdToPosts < ActiveRecord::Migration[6.0]
  def change  
    add_column :posts, :neighborhood_id, :integer
  end
end
