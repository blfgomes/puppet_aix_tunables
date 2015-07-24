class Tunable
  attr_accessor :name, :current, :default, :type

  def initialize(name, current, default, type)
    @name = name
    @current = current
    @default = default
    @type = type
  end
end

