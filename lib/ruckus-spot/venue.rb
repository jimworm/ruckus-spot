class RuckusSpot::Venue < RuckusSpot::Base
  has_many :radio_maps, class_name: 'RuckusSpot::RadioMap'
  has_many :locations, class_name: 'RuckusSpot::Location'
  
  def id;venue_id;end
end
