require 'puppet/provider/tunable'

Puppet::Type.type(:ioo).provide :ioo, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'ioo'

  mk_resource_methods

  def value=(v)
    set_value(resource[:name], v)
  end

end 
