class CreateDinnerFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :dinner_friends do |t|
      t.string :who
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
