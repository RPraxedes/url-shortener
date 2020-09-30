class HomeController < ApplicationController
  def redirect
    shortlink = Url.find_by(shortlink: params[:id])

    if shortlink.nil?
      render "home/error"
    else
      visitor = Visitor.create(
        ip_address: request.remote_ip,
        browser: "#{browser.name} #{browser.full_version}",
        platform: "#{browser.platform.name} #{browser.platform.version}",
        device: browser.device.unknown? ? "computer" : browser.device.name,
        region: browser.accept_language.first.region,
        url: shortlink
      )

      shortlink.visitors << visitor

      redirect_to shortlink.link
    end
  end
end
