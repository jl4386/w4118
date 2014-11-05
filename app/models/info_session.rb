class InfoSession < ActiveRecord::Base
  attr_accessible :activity_id, :contact_email, :food, :host_company, :session_id
  def company
  	Company.find_by_company_id(host_company)
  end
end
