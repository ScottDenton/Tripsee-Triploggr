class ChangeDescriptionNameInMemories < ActiveRecord::Migration[5.2]
  def change
   rename_column :memories, :long_desc, :description
  end
end
