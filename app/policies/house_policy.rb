class HousePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user.admin
  end

  private

  def user_is_owner_or_admin?
    user.admin || record.user == user
  end
end
