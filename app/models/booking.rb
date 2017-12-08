class Booking < ApplicationRecord
  belongs_to :profile
  belongs_to :house

  validates :start_date, presence: true

  before_save :check_status
  monetize :amount_cents

def check_status
  if self.status === "To be paid"
    BookingMailer.to_be_paid_notification(self).deliver_now
  end
end

end
