class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :user_one
      t.text :user_two
      t.integer :score_one
      t.integer :score_two
      t.text :winner

      t.timestamps null: false
    end
  end
end
