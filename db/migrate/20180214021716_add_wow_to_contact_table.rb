class AddWowToContactTable < ActiveRecord::Migration[5.1]
  def change
      add_column( :contacts,   :wow, :string,  after: :id )
  end
end
