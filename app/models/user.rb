require 'bcrypt'
class User < ActiveRecord::Base
	has_secure_password
  attr_accessible :major, :year_of_graduation, :date_of_birth, :degree, :email, :name, :overall_gpa, :user_id, :password

    # users.password_hash in the database is a :string
  #before_save :create_remember_token
   private
        def create_remember_token
          self.remember_token = SecureRandom.urlsafe_base64
       end
      
end
