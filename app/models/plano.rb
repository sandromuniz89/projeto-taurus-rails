class Plano < ApplicationRecord
  has_many :customers

  validates :nome, presence: true, uniqueness: true
  validates :valor, presence: true, numericality: { greater_than_or_equal_to: 0 }
end