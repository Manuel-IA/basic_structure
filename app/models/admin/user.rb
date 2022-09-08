class Admin::User < User
  has_and_belongs_to_many :admin_insurances, class_name: :Insurance
end
