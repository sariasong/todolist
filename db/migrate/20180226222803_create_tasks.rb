class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :action
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
