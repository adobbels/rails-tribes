class BookingMailerPreview < ActionMailer::Preview
  def creation_confirmation
    booking =  Booking.last
    BookingMailer.creation_confirmation(booking)
  end

  def no_creation_confirmation
    booking =  Booking.last
    BookingMailer.no_creation_confirmation(booking)
  end
end

# testing url
# http://localhost:3000/rails/mailers/booking_mailer/creation_confirmation
# http://localhost:3000/rails/mailers/booking_mailer/no_creation_confirmation
