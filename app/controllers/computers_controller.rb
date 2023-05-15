class ComputersController < ApplicationController
    def index
        computers = Computer.all
        render json: computers
    end

    def new
        computers = Computer.new
end
