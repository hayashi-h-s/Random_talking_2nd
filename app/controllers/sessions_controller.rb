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
      redirect_to folders_path
      flash[:success] = "ログインしました。"
    else
      flash.now[:danger] = 'メールアドレスまたはパスワードが違います。'
      render 'new'
    end

  end

  def destroy
    log_out
    redirect_to login_path
    flash[:primary] = "ログアウトしました。"
  end    

  private

    # def session_params
    #   params.require(:session).permit(:email, :password)
    # end

end
