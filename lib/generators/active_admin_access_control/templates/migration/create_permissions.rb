class CreatePermissions < ActiveRecord::Migration[7.1]
  def change
    create_table :permissions do |t|
      t.references :role, null: false, foreign_key: true
      t.string :class_name
      t.integer :state
      t.string :action

      t.timestamps
    end
  end
end
