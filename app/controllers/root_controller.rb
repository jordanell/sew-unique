class RootController < ApplicationController
  def index
    @alerts = Alert.all
    @galleries = Gallery.visible
  end
end
