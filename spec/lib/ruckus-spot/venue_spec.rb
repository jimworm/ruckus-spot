describe "RuckusSpot::Venue" do
  describe ".all" do
    it "returns a list of Venues" do
      venues = RuckusSpot::Venue.all
      expect(venues).to be_a_kind_of(Enumerable)
      expect(venues).to include(a_kind_of(RuckusSpot::Venue))
    end
  end
  
  describe ".find" do
    it "returns the Venue with the correct id" do
      venue = RuckusSpot::Venue.find('rksg-dev')
      expect(venue.id).to eq('rksg-dev')
    end
  end
  
  describe "#id" do
    let(:venue_id) { 'Brian McGee' }
    
    it "is the same as :venue_id" do
      venue = RuckusSpot::Venue.new
      venue.venue_id = venue_id
      expect(venue.id).to eq venue_id
    end
  end
  
  describe "#locations" do
    let(:venue_id) { 'rksg-dev' }
    
    it "returns a list of Locations" do
      venue = RuckusSpot::Venue.find(venue_id)
      locations = venue.locations

      expect(locations).to be_a_kind_of(Enumerable)
      expect(locations).to include(a_kind_of(RuckusSpot::Location))
    end
  end
  
  describe "#radio_maps" do
    let(:venue_id) { 'rksg-dev' }
    
    it "returns a list of Locations" do
      venue = RuckusSpot::Venue.find(venue_id)
      radio_maps = venue.radio_maps

      expect(radio_maps).to be_a_kind_of(Enumerable)
      expect(radio_maps).to include(a_kind_of(RuckusSpot::RadioMap))
    end
  end
end
