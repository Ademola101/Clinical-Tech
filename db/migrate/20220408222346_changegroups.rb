class Changegroups < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :groups_id, :group_id
  end
end
