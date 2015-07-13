require 'puppet/provider/tunable'

Puppet::Type.type(:no).provide :no, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'no'

  mk_resource_methods

  def value=(v)
    set_value(resource[:name], v)
  end

end 
