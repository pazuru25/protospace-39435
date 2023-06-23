class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:show, :index]
  before_action :configure_permitted_parameters, if: :devise_controller?
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    #2〜６行目を入力することでdevise_create_usersカラムとキーを結びつけることができる　ストロングパラメーターの設定
  end
end
