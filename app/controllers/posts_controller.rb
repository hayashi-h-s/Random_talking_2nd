class PostsController < ApplicationController

  def create
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.build(post_params)
    @post.save
    redirect_to folder_path(@folder)
  end

  def new
    @folder = Folder.find(params[:folder_id])
    @post = @folder.posts.new
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