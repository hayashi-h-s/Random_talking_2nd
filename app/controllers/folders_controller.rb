class FoldersController < ApplicationController
  # before_action :logged_in_user, only: [:create, :destroy]

  def index
    @folders = Folder.all
  end

  def new
    # @user = User.find(params[:user_id])
    @folder = Folder.new
  end

  def create
    @folder = current_user.folders.build(folder_params)
    if @folder.save
      flash[:success] = "「#{@folder.title}」を投稿しました"
      redirect_to new_folder_post_path(@folder)
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