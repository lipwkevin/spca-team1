class HomeController < ApplicationController
  before_action :authenticate_user
  def index
    # this will render views/home/index.html.erb and it will use
    # views/layouts/application.html.erb
    @markers = Report.markers_near(49.2827291, -123.12073750000002, 20)
  end
end
