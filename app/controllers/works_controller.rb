class WorksController < ApplicationController
  private

  def message_params
    params.require(:work).permit(:title, :text, :image)
  end
end
