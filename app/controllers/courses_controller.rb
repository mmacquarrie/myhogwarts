class CoursesController < ApplicationController
  before_action :setup_subjects

  def setup_subjects
    @subjects = ["TRNSF", "POTION", "CHARM", "DATDA", "HIST", "ASTRO", "CARE", "ARITH", "DIV", "MUGST", "RUNES", "ALCH", "SEM", "PREP", "THEORY"]
  end

  def new
	end

	def create
		@course = Course.new(article_params())
    @course.save()
		redirect_to(courses_path() )
	end

	def show
		@course = Course.find(params[:id])
    @prereqs = @course.requirements
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
		redirect_to(courses_path() )
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy()
		redirect_to(courses_path() )
	end

  def article_params
    params.require(:course).permit(:course_name, :section, :subject, :parent_course_id)
  end

  def addPrerequisite
    @course = Course.find_by_id(params[:course_id])
    @prereq = Course.find_by_id(params[:prereq_id])
    @prereq.parent_course = @course
    @prereq.save()
    redirect_to(course_path(@course))
	end
end
