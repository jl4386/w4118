class CreateRequires < ActiveRecord::Migration
  def change
    create_table :requires do |t|
      t.integer :position_id
      t.integer :document_id
      t.string :doc_type

      t.timestamps
    end
  end
end
