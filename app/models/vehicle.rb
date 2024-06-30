class Vehicle < ApplicationRecord
   validates :plate, :kind, :brand, :model, :year, presence: true
end
