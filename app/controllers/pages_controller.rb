require Rails.root.join('lib','crawler','aldi.rb')

class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
    if @page
      binding.pry
      render json: Crawler.get_page_hyperlinks(@page)
      binding.pry
    else
      render json: {status: "ID doesn't match"}
    end
  end

  # def new
  #   @page = Page.new
  # end

  # def create
  #   @page = Page.new(page_params)
  #   if @page.create
  #     redirect_to @page
  #   else
  #     render 'new'
  #   end
  # end

  # private
  # def page_params
  #   params.require(:page).permit(:page_name, :hyperlink)
  # end
end
