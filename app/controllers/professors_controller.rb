class ProfessorsController < ApplicationController
  def new
	end

	def create
		@professor = Professor.new(params.require(:professor).permit(:first_name, :last_name, :house))
		@professor.save()
		redirect_to(professors_path() )
	end

	def show
		@professor = Professor.find(params[:id])
	end

	def index
		@professors = Professor.all
	end

	def edit
		@professor = Professor.find(params[:id])
	end

	def update
		@professor = Professor.find(params[:id])
		@professor.update(params.require(:Professor).permit(:first_name, :last_name, :house))
		redirect_to @professor
	end
	def destroy
		@professor = Professor.find(params[:id])
		@professor.destroy()
		redirect_to(professors_path() )
	end
end
