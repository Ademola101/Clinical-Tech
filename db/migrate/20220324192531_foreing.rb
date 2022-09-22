class Foreing < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :patients, :groups, column: :groups_id
  end
end
