class Skill < ActiveRecord::Base
  attr_accessible :skill_id, :skill_name
  has_many :prefers
  has_many :positions, :through => :prefers
end
