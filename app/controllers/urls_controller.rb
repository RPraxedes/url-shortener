class UrlsController < ApplicationController
  before_action :fetch_url, only: :show

  def index
    @urls = Url.all
  end

  def show
    visitors = @url.visitors
    @dates = visitors.order("created_at DESC").pluck(:created_at).map(&:to_date).uniq
    date = params[:date].nil? ? @dates.first : params[:date].to_date
    @visitors_by_date = visitors.where("DATE(created_at) = ?", date)
    @visitor_count_by_hour = @visitors_by_date.group_by_hour_of_day(:created_at, format: "%-l %P").count
  end

  def new; end

  def create
    @url = Url.find_or_create_by!(url_params)

    redirect_to @url
  end

  private

  def fetch_url
    @url = Url.find_by(shortlink: params[:id])
  end

  def url_params
    params.permit(:link)
  end
end
