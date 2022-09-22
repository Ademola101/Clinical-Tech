class Renamegroupcr < ActiveRecord::Migration[7.0]
  def change
    rename_column :groups, :group_creator_id, :created_group_id
  end
end
