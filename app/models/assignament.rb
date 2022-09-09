class Assignament < ApplicationRecord
  # Associations
  has_many :assignaments_users
  has_many :users, through: :assignaments_users

  class << self
    def statuses
      [
        { id: 1, name: 'Pending' },
        { id: 2, name: 'Active' },
        { id: 3, name: 'Finished' }
      ]
    end
  end

  def status
    self.class.statuses.find { |status| status[ :id ] === status_id }
  end
end
