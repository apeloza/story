class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to @chapter, notice: 'Chapter was successfully created'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @chapter.update(chapter_params)
      redirect_to @chapter, notice: 'Chapter was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @chapter.destroy
    redirect_to chapters_path, notice: 'Chapter was successfully destroyed'
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :body, :complete)
  end

  def set_chapter
    @chapter = Chapter.find(params[:id])
  end


end
