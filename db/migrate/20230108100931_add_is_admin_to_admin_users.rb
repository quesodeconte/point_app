class AddIsAdminToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :is_admin, :boolean, default: false
  end
end
