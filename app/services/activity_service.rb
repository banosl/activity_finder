class ActivityService
  def self.conn
    Faraday.new(url: "https://www.boredapi.com")
  end

  def self.get_random_activity_by_participants(number)
    response = conn.get("/api/activity", {participants: number})
    data = JSON.parse(response.body, symbolize_names: true)
  end
end