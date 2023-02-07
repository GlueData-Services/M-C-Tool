class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if params[:q].present?
      @search = Article.search(params[:q])
    end
  end
end
