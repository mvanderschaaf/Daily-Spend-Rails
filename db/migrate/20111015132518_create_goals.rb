class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.string :name
      t.integer :amount
      t.integer :saved
      t.date :target_date

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
