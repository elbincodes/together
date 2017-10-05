class Team < ApplicationRecord
  has_many :players

  validates :name, presence: true, uniqueness: true
  validates_exclusion_of :color, in: %w( green ), message: "Cant be green"
  validates :sport, inclusion: {in: %w( basketball ) }

end
