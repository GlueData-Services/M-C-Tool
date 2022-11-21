class ProblemsController < ApplicationController
  before_action :set_match, only: %i[ create ]

  # Parameters: {"authenticity_token"=>"[FILTERED]", "problem"=>{"G465098"=>{"duplicate"=>"1", "uom"=>"0", "cat_mismatch"=>"1", "wrong_mat_type"=>"0"},
  # "M107016"=>{"duplicate"=>"0", "uom"=>"1", "cat_mismatch"=>"0", "wrong_mat_type"=>"1"}}, "commit"=>"Report problems", "id"=>"35"}
  def create
    result = MarkProblems.call(match: @match, problems: problem_params)
    redirect_to consolidate_match_path(@match), notice: 'Problems reported!'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_match
    @match = Match.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def match_params
    params.fetch(:match, {})
  end

  def problem_params
    params.require(:problem).permit!
  end

end