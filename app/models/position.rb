class Position < ActiveRecord::Base
  has_and_belongs_to_many :documents
  attr_accessible :category, :company_id, :deadline, :position_id, :position_name, :jobtype
  def company
	  Company.find_by_company_id(company_id)
  end
  def doc_require? (document_id)
  	self.require.find_by_document_id(document_id)
  end
end
