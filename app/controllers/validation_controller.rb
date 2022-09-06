class ValidationController < ApplicationController
  def index
    @matches = Match.all.page(params[:page]).per(params[:per])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    # params[:match_fields].each do |lookup_id, link|
    #   puts "#{lookup_id} -> #{link}"
    #   @match.match_fields.create(lookup_id: lookup_id, )
    # end

    Rails.logger.debug params.inspect
  end

end
