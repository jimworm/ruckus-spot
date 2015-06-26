class RuckusSpot::Location < RuckusSpot::Base
  self.prefix = '/api/v1/venues/:venue_id/'

  def self.collection_path(prefix_options = {}, query_options = nil)
    prefix_options, query_options = split_options(prefix_options) if query_options.nil?
    fail ActiveResource::MissingPrefixParam, 'venue_id prefix_option is missing' unless prefix_options.has_key?(:venue_id)
    "#{prefix(prefix_options)}#{collection_name}/last_known.json#{query_string(query_options)}"
  end
  
  def self.by_date(date = Time.now.strftime('%Y-%m-%d'), limit = 50)
    get(:by_date, date: date, limit: limit)
  end
end
