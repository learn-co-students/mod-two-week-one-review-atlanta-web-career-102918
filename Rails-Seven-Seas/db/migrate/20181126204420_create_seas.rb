class CreateSeas < ActiveRecord::Migration[5.1]
  def change
    create_table :seas do |t|
      t.string :name
      t.string :temperature
      t.string :bio
      t.string :mood
      t.string :image_url
      t.string :favorite_color
      t.string :scariest_creature
      t.boolean :has_mermaids

      t.timestamps
    end
  end
end
