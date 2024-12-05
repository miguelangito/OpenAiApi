class Form < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 100 }
  validates :processed_in_job, presence: true

  has_one :response, dependent: :destroy
end
