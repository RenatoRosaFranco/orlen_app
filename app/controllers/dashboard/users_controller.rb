# frozen_string_literal: true

module Dashboard
  class UsersController < HomeController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
      @user = User.order(created_at: :desc)
                  .page(params[:page])
                  .per(12)
    end

    def new
      @user = User.new
    end

    def create
      user = User.new(user_params)

      if user.save
        flash[:notice] = 'Usuário criado com sucesso.'
        redirect_to dashboard_user_path(user)
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @user.update(user_params)
        flash[:notice] = 'Usuário atualizado com sucesso.'
        redirect_to dashboard_user_path(@user)
      else
        render :edit
      end
    end

    def destroy
      @user.destroy

      flash[:notice] = 'Usuario removido com sucesso.'
      redirect_to dashboard_users_path
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user)
        .permit(:name, :email, :password, :password_confirmation, :admin)
    end
  end
end