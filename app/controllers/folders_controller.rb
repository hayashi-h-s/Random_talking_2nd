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
    redirect_to folders_path, notice: "フォルダを投稿しました"
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to folders_path, notice: "フォルダを削除しました"
  end

  def edit
  end

  def show
    @folder = Folder.find(params[:id])
    @posts = @folder.posts.all
    @random = @folder.posts.order("RANDOM()").limit(1)
  end

  private

    def folder_params
      params.require(:folder).permit(:title)
    end

end
