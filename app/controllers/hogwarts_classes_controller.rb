class HogwartsClassesController < ApplicationController
  before_action :setup_terms

  def setup_terms
    @terms = ["FA18", "SP19"]
  end

  def destroy
		@professor = Professor.find(params[:id])
		@course = Course.find(params[:id])
		redirect_to(hogwarts_classes_path() )
	end

  def index
    @classes = HogwartsClass.all
  end

  def new
  end

  def create
    @class = HogwartsClass.new()
    @class.course = Course.find_by_id(params[:course_id])
    @class.professor = Professor.find_by_id(params[:professor_id])
    @class.section = params[:section]
    @class.section = params[:hogwarts_class][:section]
    @class.save()
    redirect_to(hogwarts_class_path(@class))
	end

  def edit
		@class = HogwartsClass.find(params[:id])
	end


  def update
		@class = HogwartsClass.find(params[:id])
		@class.update(article_params)
		redirect_to(hogwarts_class_path() )
	end

  def article_params
    params.require(:hogwarts_class).permit(:course_id, :professor_id, :section, :term)
  end

  def show
    @hogwarts_class = HogwartsClass.find(params[:id])
    @enrolled = @hogwarts_class.students
  end
end
