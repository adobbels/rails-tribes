class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def new?
    create?
  end

  # def accept?
  #   user.admin == true
  # end
end
