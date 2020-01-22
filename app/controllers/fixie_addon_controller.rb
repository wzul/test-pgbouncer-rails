class FixieAddonController < ApplicationController
  def test
    fixie = URI.parse ENV['FIXIE_URL']

    @response = HTTParty.get(
      "http://welcome.usefixie.com",
      http_proxyaddr: fixie.host,
      http_proxyport: fixie.port,
      http_proxyuser: fixie.user,
      http_proxypass: fixie.password
    )

    raise Exception.new(@response.body) unless @response.code == 200
  end
end
