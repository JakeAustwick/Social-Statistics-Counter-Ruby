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

stats = SocialCount.new
github_stats = stats.query("http://www.github.com")

p github_stats

#=> {"stumbleupon"=>15503, "delicious"=>26, "twitter"=>0, "diggs"=>0, "linkedin"=>4, "facebook"=>{"commentsbox_count"=>0, "click_count"=>47, "total_count"=>734, "comment_count"=>145, "like_count"=>69, "share_count"=>520}, "googleplusone"=>0, "buzz"=>17254}

puts github_stats['twitter']
puts github_stats['stumbleupon']
puts github_stats['delicious']
puts github_stats['diggs']
puts github_stats['linkedin']
puts github_stats['googleplusone']
puts github_stats['buzz']

puts github_stats['facebook']['commentsbox_count']
puts github_stats['facebook']['click_count']
puts github_stats['facebook']['total_count']
puts github_stats['facebook']['comment_count']
puts github_stats['facebook']['like_count']
puts github_stats['facebook']['share_count']

