class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    
    # @user.save
    # log_in @user
    # redirect_to @user, notice: "「#{@user.name}」でユーザー登録しました"

    if @user.save
      log_in @user
      redirect_to @user, notice: "「#{@user.name}」でユーザー登録しました"
    else
      render "new"
      #後に変更
    end   
  end

    # if @user.save
    #   log_in @user
    #   redirect_to @user, notice: "「#{@user.name}」でユーザー登録しました"
    # else
    #   render 'new'
    # end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end

end
