class IndexController < ApplicationController
  def index
    @scraping = Hash.new
    if params[:word].present?
      scraping = Scraping::Html.new
      scraping.open(params[:word], params[:state])
      @scraping = scraping.html
    end
    @scraping
  end
end
