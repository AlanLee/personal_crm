class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      has_many      :phone_numbers
      has_many      :notes

      t.string      "first_name",   :default => '',  :null => false
      t.string      "last_name",    :default => '',  :null => false
      t.string      "middle_name"
      t.string      "other_name"
      t.string      "name_prefix"
      t.string      "name_suffix"
      t.string      "head_shot_link"
      t.timestamps
    end
  end
end
