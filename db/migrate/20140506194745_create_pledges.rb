class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|

        t.integer :breakpoint_id
        t.integer :user_id
        
      t.timestamps
    end
  end
end
