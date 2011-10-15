class Goal < ActiveRecord::Base
  attr_accessible :name, :amount, :target_date

  validates :name, :presence => true
  validates :amount, :presence => true
  validates :saved, :presence => true
end
