class UrlsController < ApplicationController
  before_action :fetch_url, only: [:show, :destroy]

  def index
    @urls = Url.all
  end

  def show; end

  def new; end

  def create
    @url = Url.find_or_create_by!(url_params)

    redirect_to @url
  end

  def destroy; end

  private

  def fetch_url
    @url = Url.find_by(shortlink: params[:id])
  end

  def url_params
    params.permit(:link)
  end
end
