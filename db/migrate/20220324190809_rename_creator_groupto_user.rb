class RenameCreatorGrouptoUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :groups, :created_group_id, :user_id
  end
end
