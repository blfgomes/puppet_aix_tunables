require 'puppet/provider/tunable'

Puppet::Type.type(:asoo).provide :asoo, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'asoo'

  mk_resource_methods

end 
