class ChaptersController < ApplicationController
  before_action :find_story, 
  def show
    
  	@chapter = @story.chapters.find(params[:id])
  end

  def new
  	
  end

  def create
    @chapter = @story.chapters.create(chapter_params)

    if @chapter.save
      redirect_to story_path(@story)
    else
      render 'new'
    end
  end

  def edit

  	@chapter = @story.chapters.find_by(params[:chapter_id])
  end

  def update
  	@chapter = @story.chapters.find_by(params[:chapter_id])
  	if @chapter.update(chapter_params)
  	  redirect_to @chapter
  	else
  	  render 'edit'
  	end
  end

  private

    def find_story
      @story = Story.friendly.find(params[:story_id])
    end

    def chapter_params
      params.require(:chapter).permit(:name, :content)
    end
end
