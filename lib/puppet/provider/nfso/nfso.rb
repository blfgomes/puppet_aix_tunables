require_relative '../../provider/tunable'

Puppet::Type.type(:nfso).provide :nfso, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'nfso'

  mk_resource_methods

end 
