class RenameColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :chapters, :stories_id, :story_id
  end
end
