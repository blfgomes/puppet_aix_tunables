require 'puppet/provider/tunable'

Puppet::Type.type(:vmo).provide :vmo, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'vmo'

  mk_resource_methods


end 
