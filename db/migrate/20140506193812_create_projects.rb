class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

        t.string :title
        t.text :description
        t.date :start_date
        t.date :end_date
        t.integer :goal
        t.integer :raised

      t.timestamps
    end
  end
end
