class UserDetails < ApplicationRecord
  # Associations
  belongs_to :user

  class << self

    def statuses
      [
        { id: 1, name: 'Active' },
        { id: 2, name: 'Inactive' }
      ]
    end
  end

  def role_type
    self.class.role_types.find { |role_type| role_type[ :id ] === role[ :id ] }
  end

  def role
    self.class.roles.find { |role| role[ :id ] === role_id }
  end

  def status
    self.class.statuses.find { |status| status[ :id ] === status_id }
  end
end
