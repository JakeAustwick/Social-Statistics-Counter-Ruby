require 'net/http'
require 'uri'
require 'json'

class SocialCount

  API_URL = "http://api.sharedcount.com/?url="

  def query(url)
    response = Net::HTTP.get_response(URI.parse(API_URL + url))
    stats = JSON.parse(response.body)

    raise WebServiceError, "A error occured. This is most likely because you entered a invalid URI." if stats.has_key? "Error"

    Hash[stats.map { |k,v| [k.downcase,v]}]
  end
end
