class HomeController < ApplicationController
  def redirect
    shortlink = Url.find_by(shortlink: params[:id])

    redirect_to shortlink.link
  end
end
