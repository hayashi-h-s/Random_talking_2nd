class FoldersController < ApplicationController

  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = current_user.folders.build(folder_params)
    if @folder.save
      redirect_to new_folder_post_path(@folder), notice: "「#{@folder.title}」を投稿しました"
    else
      render 'new'
    end
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to folders_path, notice: "「#{@folder.title}」を削除しました。"
  end

  def edit
  end

  def show
    @folder = Folder.find(params[:id])
    @posts = @folder.posts.all
    @posts_count = @posts.size
    @random = @folder.posts.order("RAND()").limit(1)
  end

  private

    def folder_params
      params.require(:folder).permit(:title)
    end

end