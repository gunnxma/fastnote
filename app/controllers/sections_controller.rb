class SectionsController < ApplicationController
  def index
    @sections = Section.all.order('addtime DESC')
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    @section.addtime = Time.now

    @section.save
    redirect_to sections_path
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy

    redirect_to sections_path
  end

  private

  def section_params
    params.require(:section).permit(:content)
  end
end
