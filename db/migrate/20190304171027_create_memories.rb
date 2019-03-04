class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.integer :trip_id
      t.integer :user_id
      t.string :activity
      t.integer :rating
      t.string :short_desc
      t.string :long_desc
      t.string :primary_img

      t.timestamps
    end
  end
end
