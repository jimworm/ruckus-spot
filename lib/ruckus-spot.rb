module RuckusSpot
  class << self
    attr_accessor :configuration
    
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
      Base.site = configuration.site
      Base.user = configuration.api_key
      configuration
    end
  end
  
  class Configuration
    attr_accessor :api_key
    attr_accessor :site
    
    def initialize
      @api_key = 'fake_api_key'
      @site    = 'https://sg-dev-sys.ruckuslbs.com/api/v1/'
    end
  end
end

require 'active_resource'
Dir[__dir__ + '/**/*.rb'].each { |f| require "#{File.dirname(f)}/#{File.basename(f)}" }
