class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #フィルターしたデータからユーザーを生成
    #プライベートメソッド内のemail,nameデータしか受け取らない。
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: "登録が完了しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

 #KCLASSの外部からは呼び出せない
 #Class内でしか実行されないメソッドを使用
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
