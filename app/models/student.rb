class Student < ApplicationRecord
  validates_presence_of :name
  belongs_to :address
end
