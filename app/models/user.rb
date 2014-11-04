class User < ActiveRecord::Base
  attr_accessible :Major, :Year_of_graduation, :date_of_birth, :degree, :email, :name, :overall_gpa, :user_id
end
