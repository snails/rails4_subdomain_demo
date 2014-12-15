class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.where(:name => request.subdomain).first || not_found
  end

  def not_found
    raise ActionController::RoutingError.new('User Not Found')
  end
end
