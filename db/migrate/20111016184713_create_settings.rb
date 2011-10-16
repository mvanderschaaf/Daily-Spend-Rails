class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.integer :balance
      t.integer :paycheck_amount
      t.integer :paycheck_freq_id

      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end
