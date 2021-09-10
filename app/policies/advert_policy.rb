class AdvertPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show_all_adverts?
     true
  end

  def update?
    if @user.has_role?(:admin)
      true
    elsif @advert.status == 'created' && @user.has_role?(:creator, @advert)
      true
    end
  end
end
