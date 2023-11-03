class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :pass_digest

      t.timestamps
    end
    add_index :users, :uid, unique: true
  end
end
