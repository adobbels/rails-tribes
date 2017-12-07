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

  def to_be_paid_notification(booking)
    @booking = booking

    mail(
      to:       @booking.profile.user.email,
      subject:  "Booking confirmed, please proceed payment for #{@booking.house.name} !"
    )
  end
end
