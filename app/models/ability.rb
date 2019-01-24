class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :brand_manager
      # Brands over Product model
      can :read, Product
      can :create, Product
      can [:edit, :update, :delete, :destroy], Product do |product|
        product.brand.user_id == user.id
      end
      # Brands Can over Company model
      can :read, Brand
      can :create, Brand
      can [:edit, :update, :delete, :destroy], Brand do |brand|
        brand.user == user
      end
      # brands can over Project and specification model
      can :read, Project
      can :read, Specification
    elsif user.has_role? :regular_user
      # Regular user can over project model
      can :create, Project
      can [:read, :edit, :update, :delete, :destroy, :status_opened, :status_closed], Project do |project|
        project.user == user
      end
      # Regular user can over event model
      can :create, Event
      can [:read, :edit, :update, :delete, :destroy], Event do |event|
        event.user == user
      end
      # Regular user can over Specification model
      can :create, Specification
      can [:read, :edit, :update, :delete, :destroy], Specification do |specification|
        specification.project.user_id == user.id
      end
      # Regular user can over product and company
      can :read, Product
      can :read, Brand
    end
  end
end
