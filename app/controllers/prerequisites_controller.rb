class PrerequisitesController < ApplicationController
  def destroy

	end

  def index
    @prerequisites = Prerequisite.all
  end

  def new
  end
end
