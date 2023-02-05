def random_activity_by_participants_stub(party_size)
  stub_request(:get, "https://www.boredapi.com/api/activity").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v2.7.1'
           }, query: {"participants" => party_size}).
         to_return(status: 200, body: File.read('spec/fixtures/activity_search_participants.json'), headers: {})
end