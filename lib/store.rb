class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, :greater_than_or_equal => 0
  validate :mens_or_womens

  private
  def mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "either mens_apparel or womens_apparel must be true")
      errors.add(:womens_apparel, "either mens_apparel or womens_apparel must be true")
    end
  end
end
