class UrlsController < ApplicationController
  before_action :get_url, only: [:show, :destroy]

  def index
    @urls = Url.all
  end

  def show; end

  def new; end

  def create
    @url = Url.new(url_params)

    if @url.save!
      redirect_to @url
    else
      flash.now[:error] = "Unable to create shortlink."

      render :new
    end
  end

  def destroy; end

  private

  def get_url
    @url = Url.find_by(link: param[:id])
  end

  def url_params
    params.permit(:link)
  end
end
