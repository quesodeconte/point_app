class AddAdminUserIdToPoints < ActiveRecord::Migration[7.0]
  def change
    add_reference :points, :admin_users, foreign_key: true

    change_table :points do |t|
      t.remove :name
    end
  end
end
