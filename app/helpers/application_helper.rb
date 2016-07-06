module ApplicationHelper
  def alert_for(flash_type)
    { success: 'alert-success',
      alert: 'alert-warning',
      error: 'alert-danget',
      notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end
end
