class WorksController < ApplicationController


  def new
    @work = Work.new
  end

  private

  def message_params
    params.require(:work).permit(:title, :text, :image)
  end
end
