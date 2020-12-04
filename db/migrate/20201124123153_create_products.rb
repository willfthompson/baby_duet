class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.decimal :cost
      t.string :sizes

      t.timestamps
    end
  end
end
