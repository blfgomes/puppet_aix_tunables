require 'puppet/provider/tunable'

Puppet::Type.type(:asoo).provide :asoo, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'asoo'

  mk_resource_methods

  def value=(v)
    set_value(resource[:name], v)
  end

end 
