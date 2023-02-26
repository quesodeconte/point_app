class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.belongs_to :admin_user, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
