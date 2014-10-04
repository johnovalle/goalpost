class ChangePageIdToListIdOnGoals < ActiveRecord::Migration
  def up
    rename_column :goals, :page_id, :list_id
  end
  
  def down
    rename_column :goals, :list_id, :page_id
  end
end
