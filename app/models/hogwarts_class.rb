class HogwartsClass < ApplicationRecord
  belongs_to :course
  belongs_to :professor

  has_many :registrations, dependent: :destroy,:foreign_key => "hogwarts_class_id"
	has_many :students, through: :registrations
end
