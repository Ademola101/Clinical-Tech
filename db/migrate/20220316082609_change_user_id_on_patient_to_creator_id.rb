class ChangeUserIdOnPatientToCreatorId < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :user_id, :creator_id
  end
end
