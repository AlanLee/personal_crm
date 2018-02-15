class AddTest2ToContact < ActiveRecord::Migration[5.1]
  def change
      add_column :contacts,   :test2, :string, first: true
  end
end
