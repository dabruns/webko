# Dieses Model wird vom gem CanCan benoetigt
# und definiert die Berechtigungen der einzelnen Nutzer
class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    if user.present?
      if user.has_role?(:admin)
        # Admins
        can :manage, :all
      else
        # keine Admins

        # Wenn sich jemand Fragt warum ein else braucht
        # Das haengt damit zusammen das die Funktionen wo der benutzer
        # nur eingeschrenkte rechte hab konnten aus Zeitgruenden
        # im SEII Projekt nicht umgesetzt werden
        # Spaeter werde die Funktionen noch eingeschraenkt
        can :read, :all
        can :create, :all
        can :update, :all
        can :destroy, :all
      end
    else
      # nicht regestrierte nutzer
      can :read, WelcomeController
    end
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
