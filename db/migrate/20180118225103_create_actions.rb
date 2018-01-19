class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|

      t.text        "should_do"
      t.date        "due_date"
      t.integer     "criticality"
      t.timestamps
    end
  end
end
