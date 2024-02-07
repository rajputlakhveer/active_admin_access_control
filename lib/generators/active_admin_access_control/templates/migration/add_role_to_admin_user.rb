class AddRoleToAdminUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :admin_users, :role, null: false, foreign_key: true
  end
end
