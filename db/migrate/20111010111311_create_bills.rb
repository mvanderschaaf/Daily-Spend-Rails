class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.string :name
      t.integer :amount
      t.integer :frequency_id
      t.date :last_paid_date

      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
