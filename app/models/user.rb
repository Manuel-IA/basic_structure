class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Scopes
  default_scope { select( '"user_details".*, "users".*' ).left_outer_joins( :details ) }

  # Associations
  has_one :details, class_name: :UserDetails, dependent: :destroy
  accepts_nested_attributes_for :details, update_only: true
  has_and_belongs_to_many :insurances
end
