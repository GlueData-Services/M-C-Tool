class CategoriesController < ApplicationController
  before_action :find_match, only: %i[ filter update ]

  def filter
    @lkp = ActiveRecord::Base.connection.exec_query('select distinct LVL1_CODE from lkp_merch_hier')
  end

  def update
    if params[:lvl4_code].blank?
      redirect_to consolidate_match_path(@match), error: "Please select the data from dropdown."
    elsif params[:lvl4_code].present?
      @match.match_fields.update_all(overridden_value: params[:lvl4_code])
      redirect_to consolidate_match_path(@match), notice: "Match is successfully updated."
    else
      redirect_to consolidation_path, error: "Match is not updated."
    end
  end

  def lvl2
    lvl1_code = params[:lvl1_code]
    lvl2 = Category.where(lvl1_code: lvl1_code).distinct.pluck(:lvl2_code, :lvl2_desc)
    render json: lvl2.map { |code, desc| { code: code, desc: desc } }
  end

  def lvl3
    lvl2_code = params[:lvl2_code]
    lvl3 = Category.where(lvl2_code: lvl2_code).distinct.pluck(:lvl3_code, :lvl3_desc)
    render json: lvl3.map { |code, desc| { code: code, desc: desc } }
  end

  def lvl4
    lvl3_code = params[:lvl3_code]
    lvl4 = Category.where(lvl3_code: lvl3_code).distinct.pluck(:lvl4_code, :lvl4_desc)
    render json: lvl4.map { |code, desc| { code: code, desc: desc } }
  end

  private

  def find_match
    match = Match.includes(maras: :match_fields).find_by(id: params[:match])
    if match.present? && match&.match_fields.present?
      @match = match
    else
      redirect_to consolidation_path, error: "Either match or match fields are not available."
    end
  end
end
