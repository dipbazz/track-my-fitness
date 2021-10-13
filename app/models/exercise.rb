class Exercise < ApplicationRecord
  has_many :measurements

  validates :name, presence: true
  validates :unit, presence: true
  validates :target, presence: true
end
