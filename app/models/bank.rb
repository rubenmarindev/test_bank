class Bank < ApplicationRecord
  has_many :suppliers
  validates :name, presence: true, length: { minimum: 6, maximum: 50 }
end
