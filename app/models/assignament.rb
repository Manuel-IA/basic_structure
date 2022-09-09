class Assignament < ApplicationRecord

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
