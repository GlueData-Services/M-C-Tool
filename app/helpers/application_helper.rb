module ApplicationHelper
  def flash_class(level)
    case level.to_s
    when 'notice' then "alert-primary"
    when 'success' then "alert-success"
    when 'error' then "alert-danger"
    when 'alert' then "alert-warning"
    else 'alert-dark'
    end
  end
end
