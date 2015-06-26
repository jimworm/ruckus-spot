Gem::Specification.new do |s|
  s.name        = 'ruckus-spot'
  s.version     = '0.0.1'
  s.date        = '2015-03-31'
  s.summary     = "Ruby library for the Ruckus Wireless SPoT API"
  s.description = "Library for the Ruckus Wireless SPoT API"
  s.author      = "Jimworm"
  s.email       = 'jimworm@gmail.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://github.com/jimworm/ruckus-spot'
  s.license     = 'MIT'
  
  s.add_dependency 'activeresource', '~> 4.0'
  s.add_development_dependency 'rspec', '~> 3.2'
end
