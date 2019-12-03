class RemoveNeighborhood < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :neighborhood
  end
end
