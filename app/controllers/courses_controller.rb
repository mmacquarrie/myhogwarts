class CoursesController < ApplicationController
  before_action :setup_subjects

  def setup_subjects
    @subjects = ["TRNSF", "POTION", "CHARM", "DATDA", "HIST", "CARE", "ASTRO", "ARITH"]
  end

  def new
	end

	def create
		@course = Course.new(article_params())
    @course.save()
    #call add prerequisite with params
		redirect_to(courses_path() )
	end

	def show
		@course = Course.find(params[:id])
	end

	def index
		@courses = Course.all
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		@course.update(article_params())
		redirect_to @course
	end
	def destroy
		@course = Course.find(params[:id])
		@course.destroy()
		redirect_to(courses_path() )
	end

  def article_params
    params.require(:course).permit(:course_name, :section, :subject)
  end

  #def addPrerequisite()
		#@student = Student.find_by_student_name(params[:student_name])
    #@prereq  = Course.find(params[:id])
		#@student.courses << @prereq
		#@student.save()
	#end
end
