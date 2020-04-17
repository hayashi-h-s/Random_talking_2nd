class PostsController < ApplicationController

  before_action :correct_user, only: [:new, :create, :destroy]

  def index
    @folder = Folder.find(params[:folder_id])
    @posts = @folder.posts.all
    # .order("RAND()").limit(1000) ランダムに表示できる
  end

  def new
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.new
  end

  def create
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.build(post_params)
    if @post.save
      redirect_back(fallback_location: new_folder_post_path)
      flash[:notice] = "「#{@post.content}」を投稿しました"
    else
      render "new"
    end
  end
  
  def destroy
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.find(params[:id])
    @post.destroy
    redirect_back fallback_location: root_path, notice: "トークテーマを削除しました"
  end

  def edit  
    
  end

  private

    def post_params
      params.require(:post).permit(:content)
    end

end