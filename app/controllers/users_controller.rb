class UsersController < ApplicationController

  # テーブル一覧をGET /users.json
  def index
    if params[:uid]
      user = User.find_by(uid: params[:uid])
      render json: user.to_json(include: [:computer, :gadget])
    elsif params[:user_name]
      user = User.find_by(user_name: params[:user_name])
      render json: user.to_json(include: [:computer, :gadget])
    else
      users = User.all
      render json: users.to_json(include: [:computer, :gadget])
    end
  end

  # インスタンス作成してPOST
  def create 
    user = User.new(user_params)
    computer = Computer.new(user_id: user.uid)
    gadget = Gadget.new(user_id: user.uid)
    user.computer = computer
    user.gadget = gadget
    
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  # PATCH/PUT
  def update
    user = User.find(params[:id])
    gadget = user.gadget
    computer = user.computer
    gadget.mouse_items = gadget_params[:mouse_items]
    gadget.save

    if user.update(user_params) && gadget.update(gadget_params) && computer.update(computer_params)
      render json: user.to_json(include: [:computer, :gadget])
    else
      render json: user.errors
    end
  end

  # DELETE
  def destroy
    user = User.find(params[:id])
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

  def gadget_params
    params.require(:gadget).permit(:user_id, :mouse_items  => [], :keyboard_items  => [], :monitor_items  => [], :audio_items  => [], :pad_items  => [], :phone_items  => [], )
  end

end

