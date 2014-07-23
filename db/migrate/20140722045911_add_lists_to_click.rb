class AddListsToClick < ActiveRecord::Migration
  def change
    add_column :click, :lists_id, :integer
    add_index :click, :lists_id
  end
end
