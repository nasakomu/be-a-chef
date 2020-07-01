class UsersController < ApplicationController
  before_action :set_params_user, only: [:edit, :update]

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "登録情報を更新しました"
      redirect_to root_path
    else
      flash.now[:alert] = "更新に失敗しました"
      render :edit
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

    def set_params_user
      @user = User.find(params[:id])
    end

end
