class BookingAdminMailer < ApplicationMailer
  def admin_creation_confirmation(booking)
    @booking = booking

    mail(
      to:       "adobbels@gmail.com",
      subject:  "Your booking request for #{@booking.house.name} has been sent!"
    )
  end

  def admin_no_creation_confirmation(booking)
    @booking = booking

    mail(
      to:       "adobbels@gmail.com",
      subject:  "A problem with your booking for #{@booking.house.name} !"
    )
  end

end
