class AddAmountToBookings < ActiveRecord::Migration[5.1]
  def change
    add_monetize :bookings, :amount
  end
end
