class SectionsController < ApplicationController
  def index
  end

  def new
    @section = Section.new
  end
end
