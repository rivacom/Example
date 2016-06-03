class Ability
  include CanCan::Ability
  def initialize(user)
    
     if user.is_admin?
    can :manage, :all
  else 
    cannot :manage, :all
  end
    
  end
end
