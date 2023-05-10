class UsersController < ApplicationController
  # テーブル一覧をGET /users.json
  def index
    users = User.all
    render json: users
  end

  # 指定されたユーザー名のインスタンスをGET
  def show
    user = User.find_by(user_name: params[:user_name])
    render json: user
  end


  # インスタンス作成してPOST
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end


  # PUTCH/PUT
  def update
    user = User.find_by(user_name: params[:user_name])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors
    end
  end


  # DELETE
  def destroy
    user = User.find_by(user_name: params[:user_name])
    user.destroy
    head :no_content
  end


  # 以下はプライベート
  private

  def user_params
    params.require(:user).permit(:uid, :user_name, :display_name, :photo_url)
  end
end