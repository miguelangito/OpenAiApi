class Form < ApplicationRecord
  has_one :response, dependent: :destroy
end
