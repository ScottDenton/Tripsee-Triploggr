class RemoveWriterIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :writer_id, :integer
  end
end
