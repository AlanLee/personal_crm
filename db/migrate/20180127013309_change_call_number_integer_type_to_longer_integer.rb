class ChangeCallNumberIntegerTypeToLongerInteger < ActiveRecord::Migration[5.1]

  def change
      reversible do |dir|
          dir.up do
              change_column :phone_numbers, :call_number, :integer, :limit => 5
          end

          dir.down do
              remove_column(  "phone_numbers", "contact_id"           )
              add_column(     "phone_numbers", "contact_id", :integer )
          end
      end
  end


  # BELOW DO NOT MIGRATE DOWN

  # def change
  #   change_column :phone_numbers, :call_number, :integer, :limit => 5   # 8 bytes, bigint
  # end

  # def up
  #   change_column :phone_numbers, :call_number, :integer, :limit => 5   # 8 bytes, bigint
  # end
  #
  # def down
  #   change_column :phone_numbers, :call_number, :integer, :limit => 4
  #   end

end
