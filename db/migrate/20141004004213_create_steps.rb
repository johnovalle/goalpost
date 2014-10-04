class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.boolean :complete
      t.integer :goal_id
      t.timestamps
    end
  end
end
