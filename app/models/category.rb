class Category < ApplicationRecord
  # -- Validations
 validates :name, presence: true, uniqueness: true

 #Relations
 has_many :products

end
