class ActivityService
  def self.conn
    Faraday.new(url: "https://www.boredapi.com")
  end

  def self.get_random_activity_by_participants(party_size)
    response = conn.get("/api/activity", {'participants' => party_size})
    data = JSON.parse(response.body, symbolize_names: true)
  end
end