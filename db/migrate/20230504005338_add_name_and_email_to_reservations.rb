class AddNameAndEmailToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :name, :string, null: false
    add_column :reservations, :email, :string, null: false
  end
end
