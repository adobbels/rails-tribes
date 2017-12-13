class ProfilePolicy < ApplicationPolicy
  class Scope < Scope


    def resolve
      scope
    end
  end

  def index?
      true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def show?
    user_is_owner_or_admin?
  end

  def update?
    if user_is_owner_or_admin?
      return true # Les users qui ont déjà un profil peuvent updater leur profil.
      #Permet d'éditer par héritage d'ApplicationPoilcy
    else
      return false
    end
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

