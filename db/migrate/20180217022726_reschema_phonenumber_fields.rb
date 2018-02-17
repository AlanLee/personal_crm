class ReschemaPhonenumberFields < ActiveRecord::Migration[5.1]
  def up
    remove_column(  "phone_numbers", "call_number"           )
    add_column(     "phone_numbers", "phone_area_code", :integer )
    add_column(     "phone_numbers", "phone_7_digits",  :integer )
  end

  def down
    change_column(  :phone_numbers, :call_number, :integer, :limit => 5 )
    remove_column(  "phone_numbers", "phone_area_code"           )
    remove_column(  "phone_numbers", "phone_7_digits"            )
  end

  # def change
  #     reversible do |dir|
  #         dir.up do
  #             remove_column(  "phone_numbers", "call_number"           )
  #             add_column(     "phone_numbers", "phone_area_code", :integer )
  #             add_column(     "phone_numbers", "phone_7_digits",  :integer )
  #         end
  #
  #         dir.down do
  #             change_column(  :phone_numbers, :call_number, :integer, :limit => 5 )
  #             remove_column(  "phone_numbers", "phone_area_code"           )
  #             remove_column(  "phone_numbers", "phone_7_digits"            )
  #         end
  #     end
  # end

end
