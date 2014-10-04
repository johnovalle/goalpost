class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.boolean :complete
      t.integer :page_id
      t.timestamps
    end
  end
end
