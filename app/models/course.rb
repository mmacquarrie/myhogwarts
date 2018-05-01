class Course < ActiveRecord::Base
	has_many :previous_courses, dependent: :destroy, :foreign_key => "course_id"
	has_many :students, through: :previous_courses

	#https://medium.com/@jbmilgrom/active-record-many-to-many-self-join-table-e0992c27c1e
	has_many :requirements, class_name: "Course", foreign_key: "parent_course_id"
	belongs_to :parent_course, class_name: "Course", required: false

	has_many :hogwarts_classes, dependent: :destroy, :foreign_key => "course_id"
end
