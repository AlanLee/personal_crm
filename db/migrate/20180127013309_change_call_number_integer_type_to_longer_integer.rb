class ChangeCallNumberIntegerTypeToLongerInteger < ActiveRecord::Migration[5.1]

  def up
    change_column :phone_numbers, :call_number, :integer, :limit => 5   # 8 bytes, bigint
  end

  def down
    change_column :phone_numbers, :call_number, integer
    end

end
