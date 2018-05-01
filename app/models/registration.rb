class Registration < ApplicationRecord
  belongs_to :hogwarts_class
  belongs_to :student
end
