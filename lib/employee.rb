class Employee < ActiveRecord::Base
  belongs_to :store,foreign_key: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates_numericality_of :hourly_rate, :greater_than => 40
  validates_numericality_of :hourly_rate, :less_than => 200
end
