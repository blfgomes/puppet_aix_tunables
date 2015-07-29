class TunableProperty
  attr_accessor :name, :current, :default, :reboot, :type

  def initialize(name, current, default, reboot, type)
    @name = name
    @current = current
    @default = default
    @reboot = reboot
    @type = type
  end
end

