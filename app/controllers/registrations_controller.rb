class RegistrationsController < ApplicationController

  def index
    @students = Student.all.order('last_name ASC')
    @count = @students.count
    @per_row = (@count/3).floor
  end

  def show
  	@student = Student.find(params[:id])
    intermediateRegistration()
  end

  def intermediateRegistration
    if !@student
      @student = Student.find(params[:id])
    end
    @past_courses = @student.courses
    @current_classes = @student.hogwarts_classes

    # All classes/courses they're not currently/haven't already taken
    @all_classes = HogwartsClass.all - @current_classes
    @all_courses = Course.all - @past_courses

    # Get all courses for which they have completed the prerequisites
    eligible_courses = []

    for course in @all_courses

      # Determine if student has taken all the prerequisites
      all_req_satisfied = true
      for req in course.requirements
        if not @past_courses.include? req
          all_req_satisfied = false
        end
      end

      # If you've taken all the prereqs, add to eligible courses
      if (all_req_satisfied) or (course.requirements.count == 0)
        eligible_courses.push(course)
      end
    end
    available_classes = []
    for course in eligible_courses
      # If the course is being offered, add to available classes
      @class = HogwartsClass.find_by_course_id(course.id)
      if @class and @all_classes.include? @class
        available_classes.push(@class)
      end
    end

    @available_classes = available_classes
    #redirect_to(intermediateRegistration_path())
  end

  def registerStudentForCourse
    @student = Student.find(params[:student_id])
    @class = HogwartsClass.find(params[:hogwarts_class][:hogwarts_class_id])
    @student.hogwarts_classes << @class

    redirect_to(registration_path(@student))
  end

  def deregister
    @student = Student.find(params[:student_id])
    @class = HogwartsClass.find(params[:class_id])

		@student.hogwarts_classes.delete(@class)
		@student.save()
		redirect_to(hogwarts_class_path(@class))
  end
end
