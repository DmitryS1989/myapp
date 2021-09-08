class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    @user.has_any_role?(:admin, :user)
  end

  def new_advert?
    @user.has_any_role?(:admin, :user)
  end
end
