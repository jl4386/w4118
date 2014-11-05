class Apply < ActiveRecord::Base
  attr_accessible :integer, :position_id, :status, :user_id
  belongs_to :user
  belongs_to :position
end
