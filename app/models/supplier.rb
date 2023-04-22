class Supplier < ApplicationRecord
  belongs_to :bank
  validates :name, presence: true, length: { minimum: 6, maximum: 50 },
    format: { with: /\A[a-zA-Z\s]+\z/}
  validates :nit, presence: true, length: { minimum: 9, maximum: 11 }
  validates :contact_name, presence: true, length: { minimum: 6, maximum: 50 }
  validates :contact_phone, presence: true, length: { minimum: 5, maximum: 10 }
  validates :account_number, presence: true, length: { minimum: 5, maximum: 15 }

  def valid_bank_id
    errors.add(:bank_id, 'is not a valid bank') unless Bank.exists?(bank_id)
  end
end
