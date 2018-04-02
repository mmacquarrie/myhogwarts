class StudentsController < ApplicationController
  def new
	end

	def create
		@student = Student.new(params.require(:student).permit(:first_name, :last_name, :house))
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
	end

	def update
		@student = Student.find(params[:id])
		@student.update(params.require(:student).permit(:first_name, :last_name, :house))
		redirect_to @student
	end
	def destroy
		@student = Student.find(params[:id])
		@student.destroy()
		redirect_to(students_path() )
	end
end
