class Customer < ApplicationRecord
  belongs_to :plano

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :birthday, presence: true
  validates :cpf, presence: true, uniqueness: true, length: { is: 11 }
end