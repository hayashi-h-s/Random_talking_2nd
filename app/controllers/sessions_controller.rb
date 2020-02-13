class SessionsController < ApplicationController

  def new
    if session[:user_id]
      @notice = "#{session[:user_id]}でログインしています。"
    end
  end

  def create
    
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to login_path, notice: "ログインしました。"
    else
      session[:user_id] = nil
      redirect_to login_path, notice: "ログイン失敗"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "ログアウトしました"
  end    

  private

    # def session_params
    #   params.require(:session).permit(:email, :password)
    # end

end
