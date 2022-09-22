class Notnullgroup < ActiveRecord::Migration[7.0]
  def change
    change_column_null :patients, :groups_id, true
  end
end
