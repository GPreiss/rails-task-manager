class Task < ApplicationRecord
  validates :name, presence: true
  validates :difficulty, inclusion: { in: 0..5 }
  validates :laziness, inclusion: { in: 0..10 }
end
