class HousePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      #scope = House
    end

    def show?
      true
    end

    def create?
      if user.admin
        return true #Les users qui ont un profil peuvent supprimer leur profil.
      else
        return false
        redirect_to(root_path)
      end
    end

    def new?
      create?
    end


    private
    def user_is_owner_or_admin?
      user.admin || record.user == user
    end

  end
end
