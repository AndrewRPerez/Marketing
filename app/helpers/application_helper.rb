module ApplicationHelper
  def flash_class type
    case type.to_sym
    when :success
      'uk-alert uk-alert-success'
    when :error, :alert
      'uk-alert uk-alert-danger'
    when :notice
      'uk-alert'
    end
  end
end
