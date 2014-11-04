class Company < ActiveRecord::Base
  attr_accessible :company_id, :company_name, :headquarter_location, :website
end
