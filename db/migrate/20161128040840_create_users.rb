class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :password_digest
      t.text :email
      t.string :username
      t.string :image

      t.timestamps null: false
    end
  end
end
