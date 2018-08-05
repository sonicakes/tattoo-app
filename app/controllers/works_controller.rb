class WorksController < ApplicationController
  before_action :authorize
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def show
    @work = Work.find params[:id]
  end

  def edit
    @work = Work.find params[:id]
    unless @current_user.works.include? @work
      redirect_to root_path
    else
      render :edit
    end
  end

  def update
    work = Work.find params[:id]
  work.update work_params
  redirect_to work
  end

  def create
    work = Work.create work_params
    current_user.works << work
    flash[:success] =  "ArtWork Created!"
    redirect_to work # GET the show pag
  end



  def destroy
    work = Work.find params[:id]
    work.destroy if @current_user.works.include? work
    flash[:success] =  "ArtWork has been Deleted!"
    redirect_to works_path
  end

  # Strong params: create a whitelist of permitted parameters
private
def work_params
  params.require(:work).permit(:title, :user_id, :price, :artwork_image)
end
end
