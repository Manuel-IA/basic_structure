class UserDetails < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :role, optional: true

  class << self

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
end
