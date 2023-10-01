class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :category, :phone_number, :address, presence: true
  validates :category, inclusion: { in: %w[italian french belgian japanese chinese] }

end
