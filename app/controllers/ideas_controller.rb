class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    respond_to do |format|
      format.html
    end
  end

  def show
   @i = Idea.find_by_id(params["id"])
    respond_to do |format|
      format.html
    end
  end

  def new
    @i= Idea.new
    respond_to do |format|
      format.html
    end
  end

  def create
    i = Idea.create(ideas_params)

    respond_to do |format|
      format.html {redirect_to ideas_url}
    end
  end

  def edit
    @i = Idea.find_by_id(params["id"])
    respond_to do |format|
      format.html
    end
  end

  def update
    i = Idea.find_by_id(params["id"])
    i.update_attributes(ideas_params)

    respond_to do |format|
      format.html {redirect_to i}
    end
  end

  def destroy
    i = Idea.find_by_id(params["id"])
    i.destroy
    respond_to do |format|
      format.html {redirect_to ideas_url}
    end
  end

  private
  def ideas_params
    params.require(:idea).permit(:name, :description)
  end

end
