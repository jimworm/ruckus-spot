# Ruckus Wireless SPoT API client

## API Version support
This gem uses Ruby > 2.0, ActiveResource > 4.0 and is for the v1 API only.

## Introduction
http://www.ruckuswireless.com/products/smart-wireless-services/spot

## Installation
Not on Rubygems yet

## Configuration
```ruby
require 'ruckus-spot'

RuckusSpot.configure do |r|
  r.api_key = 'my_api_key'
  r.site    = 'https://my.api.end.point.example.com'
end
```

## Usage
### Venue
1. List

`RuckusSpot::Venue.all`

2. Find by id

`venue = RuckusSpot::Venue.find('venue_id')`

### Radio map
1. List
  1. `venue.radio_maps`
  2. `RuckusSpot::RadioMap.all(params:{venue_id: 'venue_id'})`
2. Find by name
  1. `venue.radio_maps.find('map_name')`
  2. `RuckusSpot::RadioMap.find('map_name', params:{venue_id: 'venue_id'})`

### Location
* List of last seen
  1. `venue.locations`
  2. `RuckusSpot::Location.all(params:{venue_id: 'venue_id'})`