module ApplicationHelper
  def class_key key
    return "" if key.blank?
    css =
      case key
      when "notice"
        "success"
      when "alert"
        "warning"
      else
        key
      end
    "alert alert-#{css}"
  end
end
