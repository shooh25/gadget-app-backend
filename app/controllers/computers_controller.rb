class ComputersController < ApplicationController

    def index
        computers = Computer.all
        render json: computers
    end

    def show
        gadget = Computer.find(params[:id])
        render json: gadget
    end

    # def show
    #     computer = Computer.find_by(user_id: params[:user_id])
    #     render json: computer
    # end
    
    # DELETE
    # def destroy
    #     computer = Computer.find_by(user_id: params[:user_id])
    #     computer.destroy
    #     head :no_content
    # end

    # private
    # def computer_params
    #     params.require(:computer).permit(:user_id)
    # end
end
