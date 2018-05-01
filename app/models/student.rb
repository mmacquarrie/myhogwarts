class Student < ActiveRecord::Base
  has_many :previous_courses, dependent: :destroy, :foreign_key => "student_id"
	has_many :courses, through: :previous_courses

  has_many :registrations, dependent: :destroy, :foreign_key => "student_id"
  has_many :hogwarts_classes, through: :registrations

  #https://gist.github.com/randyleighton/fbc20356d12fac68e4f3
  def full_name
    "#{first_name} #{last_name}"
  end
end
