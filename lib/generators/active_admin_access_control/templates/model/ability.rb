# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return if user.blank?

    if user.role.name.downcase.include?("admin")
      can :manage, :all
    else
      permission_settings(user)
    end
    can :read, ActiveAdmin::Page
  end

  def permission_settings(user)
    user.role.permissions.map do |permission|    
      can permission.action.to_sym, permission.class_name.constantize if permission.can?
    end
  end
end
