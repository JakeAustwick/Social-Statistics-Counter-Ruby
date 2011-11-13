Gem::Specification.new do |s|
  s.name        = 'socialcount'
  s.version     = '0.0.0'
  s.date        = '2011-11-13'
  s.summary     = "A gem to easily retrieve social statistics for any url"
  s.description = "SocialCount is a gem to make it extemely easy for your to find out social statistics about any URI. It returns tweets, diggs, google +1's and much more "
  s.authors     = ["Jake Austwick"]
  s.email       = 'contact@mumbodesign.com'
  s.files       = ["lib/socialcount.rb"]
  s.homepage    = 'https://github.com/JakeAustwick/Social-Statistics-Counter-Ruby'

  s.add_dependency('json')
  
end
