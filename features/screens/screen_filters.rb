class ScreenFilters < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @header = element(:text, 'Meklēšanas filtri')
    @rows = element(:id, 'row_filter_name')
    @name = element(:text, 'Vpils zeme pos')
    @driver = driver
  end

  def visible?
    @driver.wait { @driver.text(@header[:value]).displayed? }
  end

  def find_filter
    @driver.wait do
      @driver.find_element(
        @rows[:type], @name[:value]
      ).displayed?
    end
  end

end
