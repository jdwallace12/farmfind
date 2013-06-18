class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      can :manage, Farm, :user_id => user.id
      can :read, :all
    end
  end
end

if can :manage @farm
  destroy_the_farm
end
