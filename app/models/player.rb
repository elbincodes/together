class Player < ApplicationRecord
  belongs_to :team

  validates :name, presence: true
  validates :number, uniqueness: true
  validates :number, numericality: {less_than: 100}
  validates :position, inclusion: {in: ["point guard", "shooting guard", "forward", "center", "coach", "power forward", "small forward"]}

  
end
