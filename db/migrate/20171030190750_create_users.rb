class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, uniqueg: true
      t.string :hashed_password

      t.timestamps
    end
  end
end
