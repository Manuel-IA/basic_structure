class UserDetails < ApplicationRecord
  # Associations
  belongs_to :user

  class << self
    def role_types
      [
        { id: 1, name: 'Manager' },
        { id: 2, name: 'Specialist' },
        { id: 3, name: 'Operator' }
      ]
    end

    def roles
      [
        { id: 1, role_type_id: 1, name: 'Branch Manager', acronym: 'BM' },
        { id: 2, role_type_id: 2, name: 'Claim Specialist', acronym: 'CS' },
        { id: 3, role_type_id: 2, name: 'Client Specialist', acronym: 'CLS' },
        { id: 4, role_type_id: 2, name: 'Payment Specialist', acronym: 'PS' },
        { id: 5, role_type_id: 1, name: 'Repair Process Manager', acronym: 'RPM' },
        { id: 6, role_type_id: 1, name: 'Paint Manager', acronym: 'PM' },
        { id: 7, role_type_id: 3, name: 'Bodyment Operator', acronym: 'BDOP' },
        { id: 8, role_type_id: 3, name: 'Prepare Operator', acronym: 'PPOP' },
        { id: 9, role_type_id: 3, name: 'Detailer Operator', acronym: 'DTOP' },
        { id: 10, role_type_id: 3, name: 'Scanner Operator', acronym: 'SCOP' },
        { id: 11, role_type_id: 3, name: 'Painter Operator', acronym: 'PTOP' },
        { id: 12, role_type_id: 3, name: 'Sanding Operator', acronym: 'SDOP' },
        { id: 13, role_type_id: 3, name: 'Mechanic Operator', acronym: 'MCOP' },
        { id: 14, role_type_id: 3, name: 'Electronic Operator', acronym: 'ETOP' }
      ]
    end

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
