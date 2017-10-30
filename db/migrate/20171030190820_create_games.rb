class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :user_id, foreign_key: true
      t.boolean :solved
      t.integer :guesses

      t.timestamps
    end
  end
end
