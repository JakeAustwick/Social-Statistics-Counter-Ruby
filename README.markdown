
###Social Count

SocialCount is a gem to make it extremely easy for your to find out
social statistics about any URI. It returns tweets, diggs, google +1's
and much more (full list given below).

The gem is extremely lightweight coming in at only 17 lines.

##### Supported Statistics
Currently supports statistics are below:

* Twitter
* StumbleUpon
* Delicious
* Diggs
* LinkedIn
* Google +1
* Google Buzz
* Facebook ( comments box, click count, total count, comment count, like
  count, share count )

###Installation

```
gem install socialcount

```

###Usage

The query simple returns a hash, to make it simple for your to access
the raw data.

#####Note

Due to the way some of the API's handle uri's, you may get different
results depending on whether you append a trailing slash or not.

```ruby

stats = SocialCount.new
github_stats = stats.query("http://www.github.com")

p github_stats

#=> {"stumbleupon"=>15503, "delicious"=>26, "twitter"=>0, "diggs"=>0, "linkedin"=>4, "facebook"=>{"commentsbox_count"=>0, "click_count"=>47, "total_count"=>734, "comment_count"=>145, "like_count"=>69, "share_count"=>520}, "googleplusone"=>0, "buzz"=>17254}

```

All available stats:

```ruby

github_stats['twitter']
github_stats['stumbleupon']
github_stats['delicious']
github_stats['diggs']
github_stats['linkedin']
github_stats['googleplusone']
github_stats['buzz']

github_stats['facebook']['commentsbox_count']
github_stats['facebook']['click_count']
github_stats['facebook']['total_count']
github_stats['facebook']['comment_count']
github_stats['facebook']['like_count']
github_stats['facebook']['share_count']

```

Please feel free to improve.

