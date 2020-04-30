class ApplicationController < ActionController::API
  # respond_to :json
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from AuthorizationError, with: :unauthorized_error

  before_action :current_cart
  before_action :configure_permitted_parameters, if: :devise_controller?

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  def authorize_user_resource(resource)
    raise AuthorizationError.new if resource.user != current_user
  end

  def unauthorized_error
    render json: { message: "You are not authorized to make that request" }, status: 401
  end

  def not_found
    render json: { message: "Resource not found" }, status: 404
  end

  private

  def current_cart
    if session[:cart_id]
      cart = Cart.find_by(id: session[:cart_id])
      if cart.present?
        @current_cart = cart
      else
        session[:cart_id] = nil
      end
    end

    if session[:cart_id] == nil
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
