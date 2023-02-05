class ActivitySearchFacade
  def self.search_activity(party_size)
    data = ActivityService.get_random_activity_by_participants(party_size)
    Activity.new(data)
  end
end