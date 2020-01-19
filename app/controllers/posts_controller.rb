class PostsController < ApplicationController

  def index
    @folder = Folder.find(params[:folder_id])
    @posts = @folder.posts.all
  end

  def new
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.new
  end

  def create
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.build(post_params)
    @post.save
    redirect_back(fallback_location: new_folder_post_path)
    flash[:notice] = "「#{@post.content}」を投稿しました"
  end

#後で実装
  # def destroy
  #   @folder = Folder.find(params[:folder_id])
  #   @post = @folder.posts.find(params[:id])
  #   @post.destroy
  #   redirect_back fallback_location: root_path, notice: "トークテーマを削除しました"
  # end

  private

    def post_params
      params.require(:post).permit(:content)
    end

end