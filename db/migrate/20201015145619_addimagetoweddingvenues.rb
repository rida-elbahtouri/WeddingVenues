class Addimagetoweddingvenues < ActiveRecord::Migration[6.0]
  def change
    add_column :weddingvenues, :photo, :string
  end
end
