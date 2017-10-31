class CreatePegs < ActiveRecord::Migration[5.1]
  def change
    create_table :pegs do |t|
      t.references :pegable, polymorphic: true, index: true
      t.integer :position

      t.timestamps
    end
  end
end
