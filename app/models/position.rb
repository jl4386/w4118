class Position < ActiveRecord::Base
  attr_accessible :category, :company_id, :deadline, :position_id, :position_name, :jobtype
end
