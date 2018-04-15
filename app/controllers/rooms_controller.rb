class RoomsController < ApplicationController
  def destroy
		@room = Room.find(params[:id])
    @room.destroy()
		redirect_to(rooms_path() )
	end

  def index
    @rooms = Room.all
  end

  def new
  end

  def create
    @room = Room.new(article_params())
    #add past course
    @room.save()
    redirect_to(rooms_path() )
  end

  def article_params
    params.require(:room).permit(:name, :capacity)
  end
end
