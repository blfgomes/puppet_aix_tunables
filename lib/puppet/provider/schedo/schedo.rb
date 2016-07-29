require_relative '../../provider/tunable'

Puppet::Type.type(:schedo).provide :schedo, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'schedo'

  mk_resource_methods

end 
