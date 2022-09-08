class Admin::Insurance < Insurance
  has_and_belongs_to_many :admin_users, class_name: :User
end
