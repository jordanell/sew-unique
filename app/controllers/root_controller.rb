class RootController < ApplicationController
  def index
    @galleries = Gallery.visible
  end
end
