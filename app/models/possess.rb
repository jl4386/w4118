class Possess < ActiveRecord::Base
  attr_accessible :integer, :proficiency, :skill_id, :user_id
end
