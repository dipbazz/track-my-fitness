class Measurement < ApplicationRecord
  belongs_to :exercise
  belongs_to :user

  validates :quantity, presence: true
  validates :unit, presence: true
end
\
