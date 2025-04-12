class ApplicationController < ActionController::Base
  include Authentication

  helper_method :current_user
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  skip_before_action :verify_authenticity_token unless Rails.env.production?

  # def current_user
  #   Current.session&.user
  # end
end
