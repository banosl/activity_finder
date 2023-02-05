class ActivitySearchFacade
  def self.search_activity(participants)
    data = ActivityService.get_random_activity_by_participants(participants)
    Activity.new(data)
  end
end