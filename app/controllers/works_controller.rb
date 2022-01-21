class WorksController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @works = Work.all.order("created_at DESC")
    @posts = Post.all
    @attachment = Attachment.all
  end

  def new
    @work = Work.new
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to action: :index
    else
      render action :edit
    end
  end

  def create
    @record = Work.new(work_params)
    if @record.save
      redirect_to works_path
    else
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end

  private

  def work_params
    params.require(:work).permit(:title, :text, :image)
  end
end
