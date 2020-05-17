class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name,                 null: false
      t.integer :category,            null: false
      t.integer :atom,                null: false
      t.integer :cost,                null: false
      t.text :url,foreign_key: true,  null: false

      t.timestamps
    end
  end
end
