class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_back fallback_location: root_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_back fallback_location: root_path, notice: "トークテーマを削除しました"
  end

  private

    def post_params
      params.require(:post).permit(:content)
    end

end
