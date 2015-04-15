Gem::Specification.new do |s|
  s.name        = 'ruckus-spot'
  s.version     = '0.0.0'
  s.date        = '2015-03-31'
  s.summary     = "Ruby library for the Ruckus Wireless SPoT API"
  s.description = "Library for the Ruckus Wireless SPoT API"
  s.authors     = ["Jimworm"]
  s.email       = 'jimworm@gmail.com'
  s.files       = ["lib/ruckus-spot.rb"]
  s.homepage    = 'https://github.com/jimworm/ruckus-spot'
  s.license     = 'MIT'
  
  s.add_dependency 'activeresource', '~> 4.0'
  s.add_development_dependency 'rspec', '~> 3.2'
end
