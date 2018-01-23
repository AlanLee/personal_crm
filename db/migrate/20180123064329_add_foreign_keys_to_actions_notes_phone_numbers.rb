class AddForeignKeysToActionsNotesPhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    add_column( "action",       "contact_id" :integer )
    add_column( "note",         "contact_id" :integer )
    add_column( "phone_number", "contact_id" :integer )
  end
end
