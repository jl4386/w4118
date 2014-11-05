class Position < ActiveRecord::Base
  attr_accessible :category, :company_id, :deadline, :position_id, :position_name, :jobtype
  def company
	  Company.find_by_company_id(company_id)
  end
end
