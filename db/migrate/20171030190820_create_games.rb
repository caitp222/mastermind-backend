class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :user_id, foreign_key: true, null: false
      t.boolean :finished, default: false
      t.boolean :solved, default: false
      t.integer :guesses_remaining, default: 12

      t.timestamps
    end
  end
end
