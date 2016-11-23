class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :stars, inclusion: { in: [1,2,3], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
