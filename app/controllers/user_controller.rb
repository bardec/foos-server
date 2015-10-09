class UserController < ApplicationController
  include Rails.application.routes.url_helpers

  before_filter :_get_user, only: :show

  def create
    user = User.new(_user_params)
    user.save
    redirect_to users_show_path(:card_number => user.card_number)
  end

  def index

  end

  def show
  end

  def _get_user
    card_number = params[:card_number]
    @user = User.where(:card_number => card_number).first!
  end
  def _user_params
    params.require(:user).permit(:name, :card_number)
  end
end
