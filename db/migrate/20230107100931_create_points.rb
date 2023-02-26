class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.string :admin_users_id
      t.integer :total

      t.timestamps
    end
  end
end
