class TestFilterExistance
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def check_filter_existance(type)
    @screens.screen_serach_filters.visible? 'Meklēšanas filtri'

    #@name = config['name']

      validate_config = YAML.load_file('features/config/filters.yml')[type]
      name = validate_config['name']
    @screens.screen_serach_filters.check_filter(name)# 'Filter 1'
  end

  def check_screen
    @screens.screen_set_filter_parameters.visible?
  end
end
