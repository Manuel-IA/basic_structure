class Role < ApplicationRecord
  # Associations
  has_and_belongs_to_many :users
  has_many :user_detail

  class << self
    def role_types
      [
        { id: 1, name: 'Manager' },
        { id: 2, name: 'Specialist' },
        { id: 3, name: 'Operator' }
      ]
    end

    def statuses
      [
        { id: 1, name: 'Active' },
        { id: 2, name: 'Inactive' }
      ]
    end
  end

  def status
    self.class.statuses.find { |status| status[ :id ] === status_id }
  end

  def role_type
    self.class.role_types.find { |role_type| role_type[ :id ] === role_type_id }
  end
end
