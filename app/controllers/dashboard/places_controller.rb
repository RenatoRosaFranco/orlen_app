# frozen_string_literal: true

module Dashboard
  class PlacesController < HomeController
    before_action :set_place, only: [:show, :edit, :update, :destroy]

    def index
      @place = current_user.places
                           .order(created_at: :desc)
                           .page(params[:page])
                           .per(12)

    end

    def new
      @place = Place.new
    end

    def create
      place = current_user.places.build(place_params)

      if place.save
        flash[:notice] = 'Local adicionado com sucesso.'
        redirect_to dashboard_place_path(place)
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @place.update(place_params)
        flash[:notice] = 'Local atualizado com sucesso.'
        redirect_to dashboard_place_path(@place)
      else
        render :edit
      end
    end

    def destroy
      @place.destroy

      flash[:notice] = 'Local removido com sucesso.'
      redirect_to dashboard_places_path
    end

    private

    def set_place
      @place = Place.friendly.find(params[:id])
    end

    def place_params
      params.require(:place)
        .permit(:name, :latitude, :longitude, :description, :place_type_id)
    end
  end
end