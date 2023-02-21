class Pet < ApplicationRecord
  SPECIES = ["Dog", "Cat", "Bird", "Rabbit"]

  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}

  def found_days_ago
    (Date.today - self.found_on).round(0)
  end
end
