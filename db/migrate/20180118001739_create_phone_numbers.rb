class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      belongs_to    :contact

      t.integer     "call_number"
      t.string      "phone_type"
      t.integer     "display_priority"

      t.timestamps
    end
  end
end
