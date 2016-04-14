# Class for storing relevant tunables properties listed through AIX commands
# (vmo, noo, ioo, nfso, schedo, asoo)
#

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

