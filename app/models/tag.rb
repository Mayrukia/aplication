class Tag < ApplicationRecord
  # -- Validations
 validates :name, presence: true, uniqueness: true

 #Relations

 has_and_belongs_to_many :products

end
