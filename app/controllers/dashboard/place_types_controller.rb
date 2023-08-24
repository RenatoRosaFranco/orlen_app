# frozen_string_literal: true

module Dashboard
  class PlaceTypesController < HomeController
    before_action :set_place_type, only: [:show, :edit, :udpate, :destroy]

    def index
      @user = Place.order(created_at: :desc)
                   .page(params[:page])
                   .per(12)
    end

    def new
      @place_type = Place.new
    end

    def create
      place_type = current_user.place_types.build(place_type_params)

      if place_type.save
        flash[:notice] = 'Tipo de Local criado com sucesso.'
        redirec_to dashboard_place_type_path(place_type)
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @place_type(place_type_params)
        flash[:notice] = 'Tipo de Local atualizado com sucesso.'
        redirec_to dashboard_place_type_path(place_type)
      else
        render :edit
      end
    end

    def destroy
      @place_type.destroy
      head :no_content
    end

    private

    def set_place_type
      @place_type = PlaceType.find(params[:id])
    end

    def place_type_params
      params.require(:place_type)
        .permit(:name)
    end
  end
end