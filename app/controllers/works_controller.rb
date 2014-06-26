class WorksController < ApplicationController
  def index
    @works = Work.all.order(:artist_id)
  end
  def create  
    work = Work.create(work_params)
    redirect_to work
  end
  def new
    @work = Work.new
  end
  def edit
    @work = Work.find params[:id]
    # DOES NOT WORK!!!
  end
  def show
    @work = Work.find params[:id]
  end
  def update
    work = Work.find params[:id]
    work.update(work_params)
    redirect_to work_path
  end
  def destroy
    work = Work.find params[:id]
    work.destroy
    redirect_to works_path
  end

  private 

  def work_params
    params.require(:work).permit(:title, :year, :medium, :style, :image, :artist_id)
  end


end