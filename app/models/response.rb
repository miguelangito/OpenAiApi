class Response < ApplicationRecord
  belongs_to :form, class_name: "form", foreign_key: "form_id"
end
