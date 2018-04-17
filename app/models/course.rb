class Course < ActiveRecord::Base
	has_many :previous_courses, dependent: :destroy, :foreign_key => "course_id"
	has_many :students, through: :previous_courses

	has_many :requirements, class_name: "Course", foreign_key: "parent_course_id"
	belongs_to :parent_course, class_name: "Course", required: false
end
