class ReportsController < ApplicationController

  def index
  end

  def matches
    sql = <<~SQL
      SELECT 
        ma.match_id as match_id, 
        ma.prefixed_matnr old_matnr, 
        m.status status, 
        m.updated_at as updated_at, 
        mb.cmd_group cmd_group, 
        mb.batch batch, 
        m.harmonized AS harmonized 
      FROM 
        matched_articles ma 
        INNER JOIN matches m ON ma.match_id = m.id 
        INNER JOIN matchable_articles mb ON ma.prefixed_matnr = mb.prefixed_matnr
    SQL

    @matches = ActiveRecord::Base.connection.execute(sql)
  end
end
