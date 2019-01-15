class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

      user ||= User.new # guest user (not logged in)
      if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :brand_manager
            #Brands over Product model
            can :read, Product
            can :create, Product
            can :edit, Product do |product|
              product.user == user
            end
            can :update, Product do |product|
              product.user == user
            end
            can :delete, Product do |product|
              product.user == user
            end
            #Brands Can over Company model
            can :read, Brand
            can :create, Brand
            can :edit, Brand do |brand|
              brand.user == user
            end
            can :update, Brand do |brand|
              brand.user == user
            end
            can :delete, Brand do |brand|
              brand.user == user
            end
            #brands can over Project and specification model
            can :read, Project
            can :read, Specification
          elsif user.has_role? :regular_user
            #Regular user can over project model
            can :create, Project
            can :read, Project do |project|
              project.user == user
            end
            can :edit, Project do |project|
              project.user == user
            end
            can :update, Project do |project|
              project.user == user
            end
            can :delete, Project do |project|
              project.user == user
            end
            #Regular user can over event model
            can :create, Event
            can :read, Event do |event|
              event.user == user
            end
            can :edit, Event do |event|
              event.user == user
            end
            can :update, Event do |event|
              event.user == user
            end
            can :delete, Event do |event|
              event.user == user
            end
            #Regular user can over Specification model
            can :create, Specification
            can :read, Specification do |specification|
              specification.user == user
            end
            can :edit, Specification do |specification|
              specification.user == user
            end
            can :update, Specification do |specification|
              specification.user == user
            end
            can :delete, Specification do |specification|
              specification.user == user
            end
            #Regular user can over product and company
            can :read, Product
            can :read, Brand
      end
  end
end
