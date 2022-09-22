class Index < ActiveRecord::Migration[7.0]
  def change
    add_index :patients, :groups_id
  end
end
