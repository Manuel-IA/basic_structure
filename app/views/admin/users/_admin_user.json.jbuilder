json.extract! admin_user, :id, :email, :role_id, :first_name, :last_name, :phone_number, :additional_info, :status_id, :password, :password_confirmation, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
