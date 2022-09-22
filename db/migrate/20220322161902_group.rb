class Group < ActiveRecord::Migration[7.0]
  def change
    rename_column :groups, :user_id, :group_creator_id
  end
end
