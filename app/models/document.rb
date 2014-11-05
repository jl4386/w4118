class Document < ActiveRecord::Base
  attr_accessible :document_id, :document_name
  has_many :requires, :dependent => :destroy
  has_many :positions, :through => :requires
end
