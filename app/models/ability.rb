class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, :all
    cannot :read, User
    can :manage, User, id: user.id
    can :manage, :all if user.admin?
  end
end
