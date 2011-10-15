class Bill < ActiveRecord::Base
  attr_accessible :name, :amount, :frequency_id

  belongs_to :frequency

  validates :name, :presence => true
  validates :amount, :presence => true
  validates :frequency, :presence => true
end
