class TestFiltersCreated
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def intro_visible?
    @screens.screen_intro.visible?
  end

  def close_intro
    @screens.screen_intro.visible?
    @screens.screen_intro.close_intro
    @screens.screen_create_filter.visible?
  end

  def filter_displayed?
    @screens.screen_filters.visible?
    @screens.screen_filters.find_filter
  end
end
