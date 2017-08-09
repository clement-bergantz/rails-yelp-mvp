class Restaurant < ApplicationRecord
  # A restaurant must have at least a name and an address.
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  # The restaurant category should belong to a fixed
  # list ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end
