class CreateProductsSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :products_sizes do |t|
      t.belongs_to :product
      t.belongs_to :size
      t.timestamps
    end
  end
end
