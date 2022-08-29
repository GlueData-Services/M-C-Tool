class ValidationController < ApplicationController
  def index
    @matches = Match.all.page(params[:page]).per(params[:per])
  end

  def edit
    @match = Match.find(params[:id])
  end

end
