class ComputersController < ApplicationController

    def index
        computers = Computer.all
        render json: computers
    end

    def show
        computer = Computer.find_by(user_id: params[:user_id])
        render json: computer
    end

    # def create
    #     computer = Computer.new(computer_params)
    #     if computer.save
    #         render json: computer
    #     else
    #         render json: computer.errors
    #     end
    # end

    # DELETE
    # def destroy
    #     computer = Computer.find_by(user_id: params[:user_id])
    #     computer.destroy
    #     head :no_content
    # end

    private
    def computer_params
        params.require(:computer).permit(:user_id)
    end
end
