class CareerFair < ActiveRecord::Base
  attr_accessible :activity_id, :fair_id, :person_in_charge
  has_many :participates, :foreign_key => :activity_id, :dependent => :destroy
  has_many :companies, :through => :participates
  def activity
  	RecruitmentActivity.find_by_activity_id(activity_id)
  end
end
