class Company < ActiveRecord::Base
  attr_accessible :company_id, :company_name, :headquarter_location, :website
  has_many :participates, :dependent => :destroy
  has_many :career_fair, :through => :participates
end
