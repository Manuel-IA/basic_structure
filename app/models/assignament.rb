class Assignament < ApplicationRecord
  # Associations
  has_many :assignaments_users
  has_many :users, through: :assignaments_users
  has_many :notes, as: :entity, dependent: :destroy
  belongs_to :insurance

  # Scopes
  scope :unassigned, -> { where( 'status_id < 2' ).or( where(status_id: nil) ) }

  class << self
    def statuses
      [
        { id: 1, name: 'Unassigned' },
        { id: 2, name: 'Active' },
        { id: 3, name: 'Finished' }
      ]
    end
  end

  def status
    self.class.statuses.find { |status| status[ :id ] === status_id }
  end
end
