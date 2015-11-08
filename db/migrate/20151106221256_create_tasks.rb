class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :course
      t.date :dueDate
      t.integer :estTime
      t.text :description
      t.integer :priority
      t.references :user_id, null: false

      t.timestamps null: false
    end
  end
end
