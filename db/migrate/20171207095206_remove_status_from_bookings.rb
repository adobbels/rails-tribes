class RemoveStatusFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :status, :string
  end
end
