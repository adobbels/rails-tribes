class HousePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      #scope = House
    end
  end
end
