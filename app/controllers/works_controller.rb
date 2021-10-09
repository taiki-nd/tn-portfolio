class WorksController < ApplicationController

  def index

  def new
    @work = Work.new
  end

  def create
    @record = Work.new(work_params)
    if @record.save
      redirect_to works_path
    else
      render :new
    end
  end

  private

  def work_params
    params.require(:work).permit(:title, :text, :image)
  end
end
