class CareerFair < ActiveRecord::Base
  attr_accessible :activity_id, :fair_id, :person_in_charge
  has_many :paticipates, :dependent => :destroy
  has_many :companies, :through => :paticipates
  def activity
  	RecruitmentActivity.find_by_activity_id(activity_id)
  end
end
