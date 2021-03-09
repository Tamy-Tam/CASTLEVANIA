class PropertiesController < ApplicationController

    def index
    end

    def show
    end

    def new
      @property = Property.new
    end

    def create
      @property = Property.new(property_params)
      if @property.save
        redirect_to property_path(@property), notice: "Un Château à loué a été créé !"
      else
        render :new
      end
    end

    def edit
    end
    def update
    end
    def destroy
    end

    private

    def property_params
      params.require(:property).permit(:name, :location, :price, :photo)
    end
end
