class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      # t.string :name
      t.string :style
      # t.text :cuisine_name
      # t.string :name
      # t.text :ingredients
      # t.text :method
      # t.boolean :is_occasion

      t.timestamps
    end
  end
end
