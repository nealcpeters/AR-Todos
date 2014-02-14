class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :contents
      t.integer :complete
      t.timestamps
    end
  end
end
