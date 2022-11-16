class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese',
                                         'french', 'belgian'] }
end
