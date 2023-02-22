class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
end
