describe "RuckusSpot::RadioMap" do
  describe ".all" do
    context "without a venue id" do
      it "returns nil" do
        expect{RuckusSpot::RadioMap.all}.to raise_error(ActiveResource::MissingPrefixParam)
      end
    end
    
    context "with a valid venue id" do
      it "returns all radio maps from that venue" do
        radio_maps = RuckusSpot::RadioMap.all(params: {venue_id: 'rksg-dev'})
        
        expect(radio_maps).to be_a_kind_of(Enumerable)
        expect(radio_maps).to include(a_kind_of(RuckusSpot::RadioMap))
      end
    end
  end
end
