class Frequency < ActiveRecord::Base
  attr_accessible :name, :times_per_year

  validates :name, :presence => true
  validates :times_per_year, :presence => true
end
