class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
    if params[:q].present?
      @search = Article.search(params[:q])
    end
  end
end
