class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def product_parms
  params.require(:product).permit(:name, :description, :image_url, :color)
end