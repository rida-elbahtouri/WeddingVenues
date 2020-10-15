class CreateWeddingvenues < ActiveRecord::Migration[6.0]
  def change
    create_table :weddingvenues do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
