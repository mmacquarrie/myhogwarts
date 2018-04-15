class StudentsController < ApplicationController
  def new
	end

	def create
		@student = Student.new(article_params())
    #add past course
    @student.save()
		redirect_to(students_path() )
	end

	def show
		@student = Student.find(params[:id])
	end

	def index
		@students = Student.all
	end

	def edit
		@student = Student.find(params[:id])
    #add past course
	end

	def update
		@student = Student.find(params[:id])
		@student.update(article_params())
		redirect_to @student
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy()
		redirect_to(students_path() )
	end

  def article_params
    params.require(:student).permit(:first_name, :last_name, :house)
  end

  def addPastCourseToStudent
    @student = Student.find_by_id(params[:student_id])
    @course  = Course.find_by_id(params[:course_id])
		@student.courses << @course
		@student.save()
    redirect_to(student_path(@student))
  end
end
