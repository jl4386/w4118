class Position < ActiveRecord::Base
  attr_accessible :category, :company_id, :deadline, :position_id, :position_name, :jobtype
  has_many :requires, :dependent => :destroy
  has_many :documents, :through => :requires
  has_many :prefers, :dependent => :destroy
  has_many :skills, :through => :prefers
  def company
	  Company.find_by_company_id(company_id)
  end
end
