class CreateBallers < ActiveRecord::Migration[5.0]
  def change
    create_table :ballers do |t|
      t.string :first_name
      t.string :last_name
      t.string :team
      t.string :position
      t.integer :buckets
      t.integer :rpg
      t.integer :apg
      t.string :sponsors
      t.string :shoes
      t.string :catchphrase
      # add_reference :ballers, :user, foreign_key: true

      t.timestamps
    end
  end
end
