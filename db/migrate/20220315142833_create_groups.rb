class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
