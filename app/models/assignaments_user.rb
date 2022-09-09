class AssignamentsUser < ApplicationRecord
  belongs_to :user
  belongs_to :assignament
end
