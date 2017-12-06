class ProfilePolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope
    end

    def update?
      if record.user == user
        return true # Les users qui ont déjà un profil peuvent updater leur profil.
        #Permet d'éditer par héritage d'ApplicationPoilcy
      else
        return false
      end
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
