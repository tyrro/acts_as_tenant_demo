class ApplicationController < ActionController::Base
  set_current_tenant_through_filter

  before_action :find_current_tenant

  def find_current_tenant
    return unless current_user

    current_company = current_user.company
    set_current_tenant(current_company)
  end
end
