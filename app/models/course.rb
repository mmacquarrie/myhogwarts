class Course < ActiveRecord::Base
	has_many :previous_courses, dependent: :destroy, :foreign_key => "course_id"
	has_many :students, through: :previous_courses
end
