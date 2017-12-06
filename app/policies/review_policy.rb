class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end

    def create?
      true #Tous les users peuvent créer des reviews
    end

    def destroy?
      if record.user == user
        return true #Les users qui ont un profil peuvent supprimer leur profil.
      else
        return false
      end
    end
  end
end
