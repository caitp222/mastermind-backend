class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.integer :game_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
