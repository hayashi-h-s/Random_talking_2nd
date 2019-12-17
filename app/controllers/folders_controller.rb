class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.save
    redirect_to folders_path
  end

  def edit
  end

  def show
    @folder = Folder.find(params[:id])
  end

  private

    def folder_params
      params.require(:folder).permit(:title)
    end

end
