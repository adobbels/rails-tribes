class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

    def create?
      true #Tous les users peuvent créer des reviews
    end

    def destroy?
      if user_is_owner_or_admin?
        return true #Les users qui ont un profil peuvent supprimer leur profil.
      else
        return false
      end
    end

    private
    def user_is_owner_or_admin?
      user.admin || record.user == user
    end
end
