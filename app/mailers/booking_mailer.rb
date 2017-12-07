class BookingMailer < ApplicationMailer
  def creation_confirmation(booking)
    @booking = booking

    mail(
      to:       @booking.profile.user.email,
      subject:  "Your booking request for #{@booking.house.name} has been sent!"
    )
  end

    def no_creation_confirmation(booking)
    @booking = booking

    mail(
      to:       @booking.profile.user.email,
      subject:  "A problem with your booking for #{@booking.house.name} !"
    )

  end
end
