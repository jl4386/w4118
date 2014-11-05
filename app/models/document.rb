class Document < ActiveRecord::Base
  has_and_belongs_to_many :positions
  attr_accessible :document_id, :document_name
end
