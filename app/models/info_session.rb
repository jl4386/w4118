class InfoSession < ActiveRecord::Base
  attr_accessible :activity_id, :contact_email, :food, :host_company, :session_id
  def company
  	Company.find_by_company_id(host_company)
  end
  def activity
  	RecruitmentActivity.find_by_activity_id(activity_id)
  end
end
