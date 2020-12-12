class ChangePriceFormat < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :cost
    add_monetize :products, :price, currency: { present: false }
  end
end
