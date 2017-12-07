class BookingAdminMailerPreview < ActionMailer::Preview
  def admin_creation_confirmation
    booking =  Booking.last
    BookingAdminMailer.admin_creation_confirmation(booking)
  end

  def admin_no_creation_confirmation
    booking =  Booking.last
    BookingAdminMailer.admin_no_creation_confirmation(booking)
  end

end

# testing url
# http://localhost:3000/rails/mailers/booking_mailer/creation_confirmation
# http://localhost:3000/rails/mailers/booking_mailer/no_creation_confirmation
