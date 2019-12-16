class FoldersController < ApplicationController
  def index
    @folder = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
  end

  def edit
  end

  def show
  end

  private

    def folder_params
      params.reqire(:folder).permit(:folder_name)
    end

end
