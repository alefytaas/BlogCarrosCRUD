class VehiclesController < ApplicationController
    before_action :fetch_vehicle, only: %i[edit update destroy show]
    def index
        @vehicles = Vehicle.all
        
    end

    def new
        @vehicle = Vehicle.new
    end

    def create
        @vehicle = Vehicle.new(vehicle_params)

        if @vehicle.save
            redirect_to vehicle_path(@vehicle)
        else
            render :new
        end
    end

    def edit
        
    end
    def update
        
        if @vehicle.update(vehicle_params)
        redirect_to vehicle_path(@vehicle)
        else
        render :edit
        end
    end

    def destroy
        
        @vehicle.destroy
        redirect_to vehicles_path
    end

    def show
        
    end

    private
    def vehicle_params #strong parameters
        params.require(:vehicle).permit(:brand, :model, :year, :plate, :kind)
    end

    def fetch_vehicle
        @vehicle = Vehicle.find(params[:id])
        return @vehicle
    end
end
