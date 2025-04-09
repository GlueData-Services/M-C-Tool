class WelcomeController < ApplicationController
  skip_before_action :verify_license_expire
  def index
    if params[:q].present?
      @search = Article.search(params[:q])
    end
  end
end
