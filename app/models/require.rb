class Require < ActiveRecord::Base
  attr_accessible :doc_type, :document_id, :position_id
  belongs_to :document
  belongs_to :position
end
