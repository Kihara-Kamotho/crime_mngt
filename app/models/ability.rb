# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.admin?
      can :manage, :all 
    else 
      can :create, Report

      can :update, Report do |report| 
        report.user == user 
      end
      can :destroy, Report do |report| 
        report.user == user
      end

      can :create, MissingPerson 

      can :update, MissingPerson do |missing_person| 
        missing_person.user == user
      end
      can :destroy, StolenProperty do |stolen_property|
        stolen_property.user == user
      end
      
      can :create, StolenProperty 

      can :update, StolenProperty do |stolen_property| 
        stolen_property.user == user 
      end
      can :destroy, StolenProperty do |stolen_property| 
        stolen_property.user == user 
      end
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
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
