class RemoveSizeFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :sizes
  end
end
