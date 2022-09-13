class Role < ApplicationRecord

  class << self
    def role_types
      [
        { id: 1, name: 'Manager' },
        { id: 2, name: 'Specialist' },
        { id: 3, name: 'Operator' }
      ]
    end
  end
end
