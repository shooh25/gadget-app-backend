class UsersController < ApplicationController

  # テーブル一覧をGET /users.json
  def index
    if params[:uid]
      user = User.includes(:computer).find_by(uid: params[:uid])
      render json: user.to_json(include: :computer)
    elsif params[:user_name]
      user = User.includes(:computer).find_by(user_name: params[:user_name])
      render json: user.to_json(include: :computer)
    else
      users = User.all.includes(:computer)
      render json: users.to_json(include: :computer)
    end
  end

  # インスタンス作成してPOST
  def create 
    user = User.new(user_params)
    computer = Computer.new(user_id: user.uid)
    user.computer = computer
    
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  # PATCH/PUT
  def update
    user = User.find(params[:id])
    computer = Computer.find(params[:id])

    if user.update(user_params) && computer.update(computer_params)
      render json: user.to_json(include: :computer)
    else
      render json: user.errors
    end
  end

  # DELETE
  def destroy
    user = User.includes(:computer).find(params[:id])
    user.destroy
    head :no_content
  end

  # param定義
  private

  def user_params
    params.require(:user).permit(:uid, :user_name, :display_name, :photo_url, :desc)
  end

  def computer_params
    params.require(:computer).permit(:user_id, :cpu_name, :gpu_name, :mb_name, :memory_name, :ssd_name, :hdd_name, :case_name, :cooler_name, :power_name)
  end
end

