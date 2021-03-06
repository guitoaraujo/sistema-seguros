module ClientsHelper

  def validity_alert_control(validity)
    class_name = 'alert alert-success'
    date_diff = (validity - Time.now).to_i / 1.day
    if date_diff <= 45
      class_name = 'alert alert-danger'
    elsif date_diff <= 60 && date_diff > 45
      class_name = 'alert alert-warning'
    end
    class_name
  end
end
