class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password
      t.string :country
      t.text :bio
      t.string :city
      t.string :image_url

      t.timestamps
    end
  end
end
