class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def product_parms
  params.require(:product).permit(:name, :description, :image_url, :color)


rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, :alert => exception.message
end

end