class WelcomeController < ApplicationController
  def index
    if params[:q].present?
      @search = Article.search(params[:q])
    end
  end
end
