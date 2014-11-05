class Company < ActiveRecord::Base
  attr_accessible :company_id, :company_name, :headquarter_location, :website
  has_many :paticipates, :dependent => :destroy
  has_many :career_fair, :through => :paticipates
end
