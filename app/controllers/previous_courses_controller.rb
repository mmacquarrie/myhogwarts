class PreviousCoursesController < ApplicationController
  def destroy
		@student = Student.find(params[:id])
		@course = Course.find(params[:id])
		redirect_to(previous_courses_path() )
	end

  def index
    @previous_courses = PreviousCourse.all
  end
  
  def new
  end

end
