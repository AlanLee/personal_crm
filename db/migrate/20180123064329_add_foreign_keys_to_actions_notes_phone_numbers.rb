class AddForeignKeysToActionsNotesPhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    add_column( "actions",       "contact_id", :integer )
    add_column( "notes",         "contact_id", :integer )
    add_column( "phone_numbers", "contact_id", :integer )
  end
end
