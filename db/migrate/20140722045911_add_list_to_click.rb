class AddListToClick < ActiveRecord::Migration
  def change
    add_column :click, :list_id, :integer
    add_index :click, :list_id
  end
end
