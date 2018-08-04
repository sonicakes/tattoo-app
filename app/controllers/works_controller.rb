class WorksController < ApplicationController
  def index
  end

  def show
    @work = Work.find params[:id]
  end

  def edit
  end

  def create
  end

  def new
  end

  def destroy
  end

  def update
  end
end
