class Response < ApplicationRecord
  belongs_to :form, class_name: "form", foreign_key: "form_id"

  enum status: [ :pending, :approved, :rejected  ]
end
