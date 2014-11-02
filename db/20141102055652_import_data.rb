class ImportData < ActiveRecord::Migration
  def up
	  Rake::Task['db:data:load'].invoke
  end

  def down
  end
end
