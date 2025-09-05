class ApplicationController < ActionController::Base
  # もしdeviseのコントローラーを使う場合のみ、configure_permitted_parametersメソッドを呼ぶ
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [許可したいカラム名]) で、
    # 新規登録（sign_up）の際に、指定したカラムの情報を保存することを許可します。
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end