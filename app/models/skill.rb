class Skill < ActiveRecord::Base
  attr_accessible :skill_id, :skill_name
  has_many :prefers
  has_many :positions, :through => :prefers
  has_many :possesses, :dependent => :destroy
  has_many :skills, :through => :possesses
end
