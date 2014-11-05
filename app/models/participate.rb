class Participate < ActiveRecord::Base
  attr_accessible :activity_id, :booth, :company_id, :contact_email
  belongs_to :career_fair
  belongs_to :company
end
