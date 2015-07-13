require 'puppet/provider/tunable'

Puppet::Type.type(:schedo).provide :schedo, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'schedo'

  mk_resource_methods

  def value=(v)
    set_value(resource[:name], v)
  end

end 
