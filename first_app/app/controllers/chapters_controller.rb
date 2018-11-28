class ChaptersController < ApplicationController
  before_action :find_story
  before_action :authenticate_user! , except: [:show]

  def index
  end

  def show

  	@chapter = @story.chapters.find(params[:id])
  end

  def new
  	
  end

  def create
    @chapter = @story.chapters.create(chapter_params)

    if @chapter.save
      redirect_to story_chapter_path(@story, @chapter.id)
    else
      render 'new'
    end
  end

  def edit

  	@chapter = @story.chapters.find(params[:id])
  end

  def update
  	@chapter = @story.chapters.find(params[:id])
  	if @chapter.update(chapter_params)
  	  redirect_to story_chapter_path(@story, @chapter.id)
  	else
  	  render 'edit'
  	end
  end
  
  def destroy
    @chapter = @story.chapters.find(params[:id])
    @chapter.destroy
    redirect_to story_path(@story)
  end
  private

    def find_story
    
      @story = Story.find(params[:story_id])
    end

    def chapter_params
      params.require(:chapter).permit(:name, :content)
    end
end
