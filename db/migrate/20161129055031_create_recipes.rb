class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :method
      t.string :image
      t.string :category

      # Foreign keys
      t.integer :user_id
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
