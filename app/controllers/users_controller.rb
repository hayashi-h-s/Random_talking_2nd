class UsersController < ApplicationController
  before_action :user_signed_in?, only: [:edit, :destroy]
  # before_action :correct_user,   only: [:edit, :update,:destroy]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @folders = @user.folders.all.page(params[:page]).per(10)
  end


  def edit  
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(user_params)
      redirect_to @user
      flash[:success] = "「#{@user.name}」でユーザー登録しました"
    else
      render "edit"
    end
  end

  private

    # def user_params
    #   params.require(:user).permit(:name, :email, :avatar, :password,:password_confirmation)
    # end

    # def user_edit_params
    #   params.require(:user).permit(:name, :email)
    # end    
    # def correct_user
    #   @user = User.find(params[:id])
    #   redirect_to folders_path unless current_user?(@user)
    #   flash[:danger] = "ユーザーの編集は、本人しかできません。"
    # end

end
