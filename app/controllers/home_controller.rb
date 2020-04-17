class HomeController < ApplicationController
  before_action :not_logged_in_user ,only: [:top]

  def top
    # self.resource = resource_class.new(sign_in_params)
  end
end