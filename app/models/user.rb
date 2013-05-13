class User < ActiveRecord::Base
  has_secure_password
   validates :email, uniqueness: true
   
   attr_accesibles :password, :password_confirmation
end
