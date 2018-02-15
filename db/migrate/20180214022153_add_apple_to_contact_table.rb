class AddAppleToContactTable < ActiveRecord::Migration[5.1]

  def up
    add_column( "contacts",   "banana", :string,  :after => "first_name" )
  end

  def down
    remove_column( "contacts", "banana" )
  end
end
