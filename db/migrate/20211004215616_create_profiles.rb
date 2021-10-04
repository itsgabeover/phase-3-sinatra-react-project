class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :game_id
      t.integer :user_id
      t.date :timestamp
    end
  end
end
