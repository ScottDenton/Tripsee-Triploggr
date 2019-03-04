class RemoveShortDescFromMemories < ActiveRecord::Migration[5.2]
  def change
    remove_column :memories, :short_desc
  end
end
